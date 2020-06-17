# README

* Ruby 2.6.5


* User
  * email: string
  * password: string
* Task
  * title: string
  * priority: int (high, medium, low)
  * status: int (to do, WIP, done)
  * start_at: datetime
  * end_at: datetime
* Tag
  * name: string
* TaskTag
  * FK: task_id
  * FK: tag_id