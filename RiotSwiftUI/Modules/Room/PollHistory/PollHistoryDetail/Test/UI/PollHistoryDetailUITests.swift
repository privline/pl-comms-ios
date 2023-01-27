//
// Copyright 2021 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import RiotSwiftUI
import XCTest

class PollHistoryDetailUITests: MockScreenTestCase {
    func testPollHistoryDetailOpenPoll() {
        app.goToScreenWithIdentifier(MockPollHistoryDetailScreenState.openDisclosed.title)
        XCTAssert(app.staticTexts["Active polls"].exists)
        XCTAssert(app.staticTexts["1/1/01"].exists)
        XCTAssert(app.buttons["View poll in timeline"].exists)
    }
    
    func testPollHistoryDetailClosedPoll() {
        app.goToScreenWithIdentifier(MockPollHistoryDetailScreenState.closedDisclosed.title)
        XCTAssert(app.staticTexts["Past polls"].exists)
        XCTAssert(app.staticTexts["1/1/01"].exists)
        XCTAssert(app.buttons["View poll in timeline"].exists)
    }
}
