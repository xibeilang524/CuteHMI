#include "CuteHMIServicesQMLPlugin.hpp"

#include <services/Service.hpp>
#include <services/ServiceRegistry.hpp>

#include <QtQml>

void CuteHMIServicesQMLPlugin::registerTypes(const char * uri)
{
	Q_ASSERT(uri == QLatin1String("CuteHMI.Services"));

	qmlRegisterType<cutehmi::services::Service>(uri, 1, 0, "Service");
	qmlRegisterType<cutehmi::services::ServiceRegistry>(uri, 1, 0, "ServiceRegistry");
}

//(c)MP: Copyright © 2017, Michal Policht. All rights reserved.
//(c)MP: This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
