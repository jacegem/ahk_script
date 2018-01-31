---
title: Capslock Key
icon: fa-check
order: 4
---



## Key Mapping

ScrollLock(스크롤락)키를 통해서 해당 스크립트를 멈추고, 다시 실행할 수 있습니다.(토글)

### Capslock Key

캡스락키를 기반으로 키 맵핑이 되어 있습니다. 기본 캡스락의 상태는 `꺼짐`으로 되어 있습니다. 스크립트가 동작하는 중에는 캡스락키를 눌러도 캡스락은 반응하지 않습니다.

캡스락키를 사용하고 싶은 경우에는 `Capslock + y` 키를 눌러서 캡스락키를 활성화 할 수 있습니다.

#### ctrl 기능으로 변경

| 입력 키 | 변경 키 |
| -----  |----     |  
| capslock + a | ctrrl + a |
| capslock + b  |  ctrl + b |
| capslock + s  |  ctrl + s |
| capslock + d  |  ctrl + d |
| capslock + f  |  ctrl + f |
| capslock + g  |  ctrl + g |
| capslock + z | ctrl + z |
| capslock + x | ctrl + x |
| capslock + c | ctrl + c |
| capslock + v | ctrl + v |
| capslock + [ | ctrl + [ |
| capslock + ] | ctrl + ] |

#### Function 키로 변경

| 입력 키       | 변경 키 |
| ------------ | ----- |
| capslock + 1 | F1    | 
| capslock + 2 | F2    | 
| capslock + 3 | F3    | 
| capslock + 4 | F4    | 
| capslock + 5 | F5    | 
| capslock + 6 | F6    | 
| capslock + 7 | F7    | 
| capslock + 8 | *     | 
| capslock + 9 | ()    | 
| capslock + 0 | )     | 
| capslock + - | F11   | 
| capslock + = | F12   | 

#### 마우스 키로 변경

capslock & delete::MouseClick, right
capslock & end::MouseClick, left
CapsLock & \::Send {|}
CapsLock & Esc::Run, taskmgr,, 
capslock & '::Send {Blind}{WheelUp}
capslock & /::Send {Blind}{WheelDown}
capslock & PgUp::Send {Blind}{WheelUp 1}
capslock & PgDn::Send {Blind}{WheelDown 1}
capslock & `;::	GetKeyState, state, Alt  MouseClick, right
capslock & h::	GetKeyState, state, Alt MouseClick, left

#### 다른 키로 변경

| 입력 키 | 변경 키 |
| -----  |----     |  
| capslock + q | backspace |
| capslock + w | Win + TAB |
| capslock + e | {delete} |
| capslock + r | Enter |
| capslock + p | AppsKey |
| Capslock + y | Capslock 키 활성화 |
| Capslock | Capslock 키 비활성화 |

capslock & `;:: 	Send {Blind}{end}
capslock & h:: Send {Blind}{home}




### Alt Key

### Window Key

### Apps Key



### Function Key

### 한자 키

### 마우스 버튼

### Shift Key





## HotString

## Appilcation



