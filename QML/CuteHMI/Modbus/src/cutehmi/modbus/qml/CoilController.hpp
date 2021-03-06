#ifndef CUTEHMI_QML_CUTEHMI_MODBUS_SRC_CUTEHMI_MODBUS_QML_COILCONTROLLER_HPP
#define CUTEHMI_QML_CUTEHMI_MODBUS_SRC_CUTEHMI_MODBUS_QML_COILCONTROLLER_HPP

#include <modbus/AbstractDevice.hpp>

#include <QObject>

namespace cutehmi {
namespace modbus {
namespace qml {

class CoilController:
	public QObject
{
	Q_OBJECT

	public:
		Q_PROPERTY(AbstractDevice * device READ device WRITE setDevice NOTIFY deviceChanged)
		Q_PROPERTY(int address READ address WRITE setAddress NOTIFY addressChanged)
		Q_PROPERTY(bool value READ value WRITE setValue NOTIFY valueChanged)
		Q_PROPERTY(bool busy READ busy NOTIFY busyChanged)

		CoilController(QObject * parent = 0);

		~CoilController() override;

	public:
		AbstractDevice * device() const;

		void setDevice(AbstractDevice * device);

		int address() const;

		void setAddress(int address);

		bool value() const;

		void setValue(bool value);

		bool busy() const;

	signals:
		void deviceChanged();

		void addressChanged();

		void valueChanged();

		void valueUpdated();

		void busyChanged();

	protected slots:
		void onValueRequested();

		void onValueUpdated();

	protected:
		void setBusy(bool busy);

		void updateValue();

	private:
		void setupCoil(Coil * reg);

	private:
		AbstractDevice * m_device;
		int m_address;
		qreal m_value;
		bool m_busy;
		Coil * m_coil;
};

}
}
}

#endif

//(c)MP: Copyright © 2017, Michal Policht. All rights reserved.
//(c)MP: This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
