
## <a name="resource-post">Post</a>

Stability: `prototype`

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **content** | *string* | content of post | `"example"` |
| **created_at** | *date-time* | when post was created | `"2015-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post:content** | *string* | content of post | `"example"` |
| **post:created_at** | *date-time* | when post was created | `"2015-01-01T12:00:00Z"` |
| **post:id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post:updated_at** | *date-time* | when post was updated | `"2015-01-01T12:00:00Z"` |
| **post:user_id** | *number* | author numer | `42.0` |
| **posts** | *array* | post list | `[{"id":"01234567-89ab-cdef-0123-456789abcdef","content":"example","created_at":"2015-01-01T12:00:00Z","updated_at":"2015-01-01T12:00:00Z","user_id":42.0}]` |
| **updated_at** | *date-time* | when post was updated | `"2015-01-01T12:00:00Z"` |
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
| **post:created_at** | *date-time* | when post was created | `"2015-01-01T12:00:00Z"` |
| **post:id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post:updated_at** | *date-time* | when post was updated | `"2015-01-01T12:00:00Z"` |
| **post:user_id** | *number* | author numer | `42.0` |


#### Curl Example

```bash
$ curl -n -X POST /posts \
  -d '{
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "created_at": "2015-01-01T12:00:00Z",
    "updated_at": "2015-01-01T12:00:00Z",
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
  "created_at": "2015-01-01T12:00:00Z",
  "updated_at": "2015-01-01T12:00:00Z",
  "user_id": 42.0,
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "created_at": "2015-01-01T12:00:00Z",
    "updated_at": "2015-01-01T12:00:00Z",
    "user_id": 42.0
  },
  "posts": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "content": "example",
      "created_at": "2015-01-01T12:00:00Z",
      "updated_at": "2015-01-01T12:00:00Z",
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
    "created_at": "2015-01-01T12:00:00Z",
    "updated_at": "2015-01-01T12:00:00Z",
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
    "created_at": "2015-01-01T12:00:00Z",
    "updated_at": "2015-01-01T12:00:00Z",
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
      "created_at": "2015-01-01T12:00:00Z",
      "updated_at": "2015-01-01T12:00:00Z",
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
| **post:created_at** | *date-time* | when post was created | `"2015-01-01T12:00:00Z"` |
| **post:id** | *uuid* | unique identifier of post | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **post:updated_at** | *date-time* | when post was updated | `"2015-01-01T12:00:00Z"` |
| **post:user_id** | *number* | author numer | `42.0` |


#### Curl Example

```bash
$ curl -n -X PATCH /posts/$POST_ID \
  -d '{
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "created_at": "2015-01-01T12:00:00Z",
    "updated_at": "2015-01-01T12:00:00Z",
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
  "created_at": "2015-01-01T12:00:00Z",
  "updated_at": "2015-01-01T12:00:00Z",
  "user_id": 42.0,
  "post": {
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "content": "example",
    "created_at": "2015-01-01T12:00:00Z",
    "updated_at": "2015-01-01T12:00:00Z",
    "user_id": 42.0
  },
  "posts": [
    {
      "id": "01234567-89ab-cdef-0123-456789abcdef",
      "content": "example",
      "created_at": "2015-01-01T12:00:00Z",
      "updated_at": "2015-01-01T12:00:00Z",
      "user_id": 42.0
    }
  ]
}
```


