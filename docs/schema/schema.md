
## <a name="resource-comment">Comment</a>

Stability: `prototype`

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **comment:content** | *string* | content of comment | `"example"` |
| **comment:id** | *uuid* | unique identifier of comment | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **comment:post_id** | *number* | post number | `42.0` |
| **comment:user_id** | *number* | author number | `42.0` |
| **comments** | *array* | comment list | `[{"id":"01234567-89ab-cdef-0123-456789abcdef","content":"example","user_id":42.0,"post_id":42.0}]` |
| **content** | *string* | content of comment | `"example"` |
| **id** | *uuid* | unique identifier of comment | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post_id** | *number* | post number | `42.0` |
| **user_id** | *number* | author number | `42.0` |

### <a name="link-POST-comment-/comments">Comment Create</a>

Create a new comment.

```
POST /comments
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **comment:content** | *string* | content of comment | `"example"` |
| **comment:id** | *uuid* | unique identifier of comment | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **comment:post_id** | *number* | post number | `42.0` |
| **comment:user_id** | *number* | author number | `42.0` |


#### Curl Example

```bash
$ curl -n -X POST /comments \
  -d '{
  "comment": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0,
    "post_id": 42.0
  }
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "content": "example",
  "user_id": 42.0,
  "post_id": 42.0,
  "comment": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0,
    "post_id": 42.0
  },
  "comments": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "content": "example",
      "user_id": 42.0,
      "post_id": 42.0
    }
  ]
}
```

### <a name="link-DELETE-comment-/comments/{(%23%2Fdefinitions%2Fcomment%2Fdefinitions%2Fidentity)}">Comment Delete</a>

Delete an existing comment.

```
DELETE /comments/{comment_id}
```


#### Curl Example

```bash
$ curl -n -X DELETE /comments/$COMMENT_ID \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "comment": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0,
    "post_id": 42.0
  }
}
```

### <a name="link-GET-comment-/comments/{(%23%2Fdefinitions%2Fcomment%2Fdefinitions%2Fidentity)}">Comment Info</a>

Info for existing comment.

```
GET /comments/{comment_id}
```


#### Curl Example

```bash
$ curl -n /comments/$COMMENT_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "comment": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0,
    "post_id": 42.0
  }
}
```

### <a name="link-GET-comment-/comments">Comment List</a>

List existing comments.

```
GET /comments
```


#### Curl Example

```bash
$ curl -n /comments
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "comments": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "content": "example",
      "user_id": 42.0,
      "post_id": 42.0
    }
  ]
}
```

### <a name="link-PATCH-comment-/comments/{(%23%2Fdefinitions%2Fcomment%2Fdefinitions%2Fidentity)}">Comment Update</a>

Update an existing comment.

```
PATCH /comments/{comment_id}
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **comment:content** | *string* | content of comment | `"example"` |
| **comment:id** | *uuid* | unique identifier of comment | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **comment:post_id** | *number* | post number | `42.0` |
| **comment:user_id** | *number* | author number | `42.0` |


#### Curl Example

```bash
$ curl -n -X PATCH /comments/$COMMENT_ID \
  -d '{
  "comment": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0,
    "post_id": 42.0
  }
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "content": "example",
  "user_id": 42.0,
  "post_id": 42.0,
  "comment": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0,
    "post_id": 42.0
  },
  "comments": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "content": "example",
      "user_id": 42.0,
      "post_id": 42.0
    }
  ]
}
```


## <a name="resource-post">Post</a>

Stability: `prototype`

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **content** | *string* | content of post | `"example"` |
| **id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post:content** | *string* | content of post | `"example"` |
| **post:id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post:user_id** | *number* | author numer | `42.0` |
| **posts** | *array* | post list | `[{"id":"01234567-89ab-cdef-0123-456789abcdef","content":"example","user_id":42.0}]` |
| **user_id** | *number* | author numer | `42.0` |

### <a name="link-POST-post-/posts">Post Create</a>

Create a new post.

```
POST /posts
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **post:content** | *string* | content of post | `"example"` |
| **post:id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post:user_id** | *number* | author numer | `42.0` |


#### Curl Example

```bash
$ curl -n -X POST /posts \
  -d '{
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0
  }
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "content": "example",
  "user_id": 42.0,
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0
  },
  "posts": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "content": "example",
      "user_id": 42.0
    }
  ]
}
```

### <a name="link-DELETE-post-/posts/{(%23%2Fdefinitions%2Fpost%2Fdefinitions%2Fidentity)}">Post Delete</a>

Delete an existing post.

```
DELETE /posts/{post_id}
```


#### Curl Example

```bash
$ curl -n -X DELETE /posts/$POST_ID \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0
  }
}
```

### <a name="link-GET-post-/posts/{(%23%2Fdefinitions%2Fpost%2Fdefinitions%2Fidentity)}">Post Info</a>

Info for existing post.

```
GET /posts/{post_id}
```


#### Curl Example

```bash
$ curl -n /posts/$POST_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0
  }
}
```

### <a name="link-GET-post-/posts">Post List</a>

List existing posts.

```
GET /posts
```


#### Curl Example

```bash
$ curl -n /posts
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "posts": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "content": "example",
      "user_id": 42.0
    }
  ]
}
```

### <a name="link-PATCH-post-/posts/{(%23%2Fdefinitions%2Fpost%2Fdefinitions%2Fidentity)}">Post Update</a>

Update an existing post.

```
PATCH /posts/{post_id}
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **post:content** | *string* | content of post | `"example"` |
| **post:id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post:user_id** | *number* | author numer | `42.0` |


#### Curl Example

```bash
$ curl -n -X PATCH /posts/$POST_ID \
  -d '{
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0
  }
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "content": "example",
  "user_id": 42.0,
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "user_id": 42.0
  },
  "posts": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "content": "example",
      "user_id": 42.0
    }
  ]
}
```


## <a name="resource-user">User</a>

Stability: `prototype`

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **document** | *string* | document of user | `"example"` |
| **email** | *string* | unique email of user | `"example"` |
| **id** | *uuid* | unique identifier of user | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **image** | *object* | unique image of user |  |
| **l_price** | *number* | lowest price of user | `42.0` |
| **name** | *string* | unique name of user | `"example"` |
| **role** | *number* | role of user | `42.0` |
| **user:document** | *string* | document of user | `"example"` |
| **user:email** | *string* | unique email of user | `"example"` |
| **user:id** | *uuid* | unique identifier of user | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **user:image** | *object* | unique image of user |  |
| **user:l_price** | *number* | lowest price of user | `42.0` |
| **user:name** | *string* | unique name of user | `"example"` |
| **user:role** | *number* | role of user | `42.0` |
| **users** | *array* | user list | `[{"id":"01234567-89ab-cdef-0123-456789abcdef","name":"example","image":null,"email":"example","role":42.0,"document":"example","l_price":42.0}]` |

### <a name="link-POST-user-/users">User Create</a>

Create a new user.

```
POST /users
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **user:document** | *string* | document of user | `"example"` |
| **user:email** | *string* | unique email of user | `"example"` |
| **user:id** | *uuid* | unique identifier of user | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **user:image** | *object* | unique image of user |  |
| **user:l_price** | *number* | lowest price of user | `42.0` |
| **user:name** | *string* | unique name of user | `"example"` |
| **user:role** | *number* | role of user | `42.0` |


#### Curl Example

```bash
$ curl -n -X POST /users \
  -d '{
  "user": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example",
    "image": null,
    "email": "example",
    "role": 42.0,
    "document": "example",
    "l_price": 42.0
  }
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "image": null,
  "email": "example",
  "role": 42.0,
  "document": "example",
  "l_price": 42.0,
  "user": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example",
    "image": null,
    "email": "example",
    "role": 42.0,
    "document": "example",
    "l_price": 42.0
  },
  "users": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "name": "example",
      "image": null,
      "email": "example",
      "role": 42.0,
      "document": "example",
      "l_price": 42.0
    }
  ]
}
```

### <a name="link-DELETE-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Delete</a>

Delete an existing user.

```
DELETE /users/{user_id}
```


#### Curl Example

```bash
$ curl -n -X DELETE /users/$USER_ID \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "user": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example",
    "image": null,
    "email": "example",
    "role": 42.0,
    "document": "example",
    "l_price": 42.0
  }
}
```

### <a name="link-GET-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Info</a>

Info for existing user.

```
GET /users/{user_id}
```


#### Curl Example

```bash
$ curl -n /users/$USER_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "user": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example",
    "image": null,
    "email": "example",
    "role": 42.0,
    "document": "example",
    "l_price": 42.0
  }
}
```

### <a name="link-GET-user-/users">User List</a>

List existing users.

```
GET /users
```


#### Curl Example

```bash
$ curl -n /users
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "users": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "name": "example",
      "image": null,
      "email": "example",
      "role": 42.0,
      "document": "example",
      "l_price": 42.0
    }
  ]
}
```

### <a name="link-PATCH-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Update</a>

Update an existing user.

```
PATCH /users/{user_id}
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **user:document** | *string* | document of user | `"example"` |
| **user:email** | *string* | unique email of user | `"example"` |
| **user:id** | *uuid* | unique identifier of user | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **user:image** | *object* | unique image of user |  |
| **user:l_price** | *number* | lowest price of user | `42.0` |
| **user:name** | *string* | unique name of user | `"example"` |
| **user:role** | *number* | role of user | `42.0` |


#### Curl Example

```bash
$ curl -n -X PATCH /users/$USER_ID \
  -d '{
  "user": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example",
    "image": null,
    "email": "example",
    "role": 42.0,
    "document": "example",
    "l_price": 42.0
  }
}' \
  -H "Content-Type: application/json"
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "name": "example",
  "image": null,
  "email": "example",
  "role": 42.0,
  "document": "example",
  "l_price": 42.0,
  "user": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "name": "example",
    "image": null,
    "email": "example",
    "role": 42.0,
    "document": "example",
    "l_price": 42.0
  },
  "users": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "name": "example",
      "image": null,
      "email": "example",
      "role": 42.0,
      "document": "example",
      "l_price": 42.0
    }
  ]
}
```


