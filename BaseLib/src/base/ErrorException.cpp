#include "../../include/base/ErrorException.hpp"

namespace cutehmi {
namespace base {

const ErrorInfo & ErrorException::info() const
{
	return m_errorInfo;
}

}
}

//(c)MP: Copyright © 2017, Michal Policht. All rights reserved.
//(c)MP: This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
