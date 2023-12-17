.class public Ljcifs/util/DES;
.super Ljava/lang/Object;
.source "DES.java"


# static fields
.field private static SP1:[I

.field private static SP2:[I

.field private static SP3:[I

.field private static SP4:[I

.field private static SP5:[I

.field private static SP6:[I

.field private static SP7:[I

.field private static SP8:[I

.field private static bigbyte:[I

.field private static bytebit:[B

.field private static pc1:[B

.field private static pc2:[B

.field private static totrot:[I


# instance fields
.field private decryptKeys:[I

.field private encryptKeys:[I

.field private tempInts:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 25

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_ce8

    sput-object v1, Ljcifs/util/DES;->bytebit:[B

    const/16 v1, 0x18

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_cf0

    sput-object v2, Ljcifs/util/DES;->bigbyte:[I

    const/16 v2, 0x38

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x38

    aput-byte v4, v2, v3

    const/16 v3, 0x30

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    const/16 v5, 0x28

    aput-byte v5, v2, v3

    const/4 v6, 0x3

    const/16 v7, 0x20

    aput-byte v7, v2, v6

    const/4 v6, 0x4

    aput-byte v1, v2, v6

    const/4 v8, 0x5

    const/16 v9, 0x10

    aput-byte v9, v2, v8

    const/4 v8, 0x6

    aput-byte v0, v2, v8

    const/16 v10, 0x39

    aput-byte v10, v2, v0

    const/16 v10, 0x31

    const/16 v11, 0x9

    aput-byte v10, v2, v11

    const/16 v10, 0xa

    const/16 v12, 0x29

    aput-byte v12, v2, v10

    const/16 v10, 0xb

    const/16 v13, 0x21

    aput-byte v13, v2, v10

    const/16 v14, 0x19

    const/16 v15, 0xc

    aput-byte v14, v2, v15

    const/16 v14, 0xd

    const/16 v16, 0x11

    aput-byte v16, v2, v14

    const/16 v14, 0xe

    aput-byte v11, v2, v14

    const/16 v16, 0xf

    aput-byte v4, v2, v16

    const/16 v16, 0x3a

    aput-byte v16, v2, v9

    const/16 v16, 0x11

    const/16 v17, 0x32

    aput-byte v17, v2, v16

    const/16 v16, 0x2a

    const/16 v17, 0x12

    aput-byte v16, v2, v17

    const/16 v16, 0x13

    const/16 v18, 0x22

    aput-byte v18, v2, v16

    const/16 v16, 0x1a

    const/16 v18, 0x14

    aput-byte v16, v2, v18

    const/16 v16, 0x15

    aput-byte v17, v2, v16

    const/16 v16, 0xa

    const/16 v19, 0x16

    aput-byte v16, v2, v19

    const/16 v16, 0x17

    aput-byte v3, v2, v16

    const/16 v16, 0x3b

    aput-byte v16, v2, v1

    const/16 v16, 0x19

    const/16 v20, 0x33

    aput-byte v20, v2, v16

    const/16 v16, 0x1a

    const/16 v20, 0x2b

    aput-byte v20, v2, v16

    const/16 v16, 0x1b

    const/16 v21, 0x23

    aput-byte v21, v2, v16

    const/16 v22, 0x1c

    const/16 v23, 0x3e

    aput-byte v23, v2, v22

    const/16 v22, 0x36

    const/16 v23, 0x1d

    aput-byte v22, v2, v23

    const/16 v22, 0x1e

    const/16 v24, 0x2e

    aput-byte v24, v2, v22

    const/16 v22, 0x1f

    const/16 v24, 0x26

    aput-byte v24, v2, v22

    const/16 v22, 0x1e

    aput-byte v22, v2, v7

    aput-byte v19, v2, v13

    const/16 v22, 0x22

    aput-byte v14, v2, v22

    aput-byte v8, v2, v21

    const/16 v22, 0x24

    const/16 v24, 0x3d

    aput-byte v24, v2, v22

    const/16 v22, 0x25

    const/16 v24, 0x35

    aput-byte v24, v2, v22

    const/16 v22, 0x26

    const/16 v24, 0x2d

    aput-byte v24, v2, v22

    const/16 v22, 0x27

    const/16 v24, 0x25

    aput-byte v24, v2, v22

    aput-byte v23, v2, v5

    const/16 v22, 0x15

    aput-byte v22, v2, v12

    const/16 v22, 0x2a

    const/16 v24, 0xd

    aput-byte v24, v2, v22

    const/16 v22, 0x5

    aput-byte v22, v2, v20

    const/16 v22, 0x2c

    const/16 v24, 0x3c

    aput-byte v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x34

    aput-byte v24, v2, v22

    const/16 v22, 0x2e

    const/16 v24, 0x2c

    aput-byte v24, v2, v22

    const/16 v22, 0x2f

    const/16 v24, 0x24

    aput-byte v24, v2, v22

    const/16 v22, 0x30

    const/16 v24, 0x1c

    aput-byte v24, v2, v22

    const/16 v22, 0x31

    aput-byte v18, v2, v22

    const/16 v22, 0x32

    aput-byte v15, v2, v22

    const/16 v22, 0x33

    aput-byte v6, v2, v22

    const/16 v22, 0x34

    aput-byte v16, v2, v22

    const/16 v22, 0x35

    const/16 v24, 0x13

    aput-byte v24, v2, v22

    const/16 v22, 0x36

    aput-byte v10, v2, v22

    const/16 v22, 0x37

    const/16 v24, 0x3

    aput-byte v24, v2, v22

    .line 3
    sput-object v2, Ljcifs/util/DES;->pc1:[B

    new-array v2, v9, [I

    .line 4
    fill-array-data v2, :array_d24

    sput-object v2, Ljcifs/util/DES;->totrot:[I

    const/16 v2, 0x30

    new-array v2, v2, [B

    const/16 v22, 0x0

    const/16 v24, 0xd

    aput-byte v24, v2, v22

    aput-byte v9, v2, v4

    const/16 v22, 0xa

    aput-byte v22, v2, v3

    const/16 v22, 0x3

    const/16 v24, 0x17

    aput-byte v24, v2, v22

    const/16 v22, 0x5

    aput-byte v6, v2, v22

    aput-byte v3, v2, v8

    const/16 v22, 0x7

    aput-byte v16, v2, v22

    aput-byte v14, v2, v0

    const/16 v22, 0x5

    aput-byte v22, v2, v11

    const/16 v22, 0xa

    aput-byte v18, v2, v22

    aput-byte v11, v2, v10

    aput-byte v19, v2, v15

    const/16 v22, 0xd

    aput-byte v17, v2, v22

    aput-byte v10, v2, v14

    const/16 v22, 0xf

    const/16 v24, 0x3

    aput-byte v24, v2, v22

    const/16 v22, 0x19

    aput-byte v22, v2, v9

    const/16 v22, 0x11

    const/16 v24, 0x7

    aput-byte v24, v2, v22

    const/16 v22, 0xf

    aput-byte v22, v2, v17

    const/16 v22, 0x13

    aput-byte v8, v2, v22

    const/16 v22, 0x1a

    aput-byte v22, v2, v18

    const/16 v22, 0x15

    const/16 v24, 0x13

    aput-byte v24, v2, v22

    aput-byte v15, v2, v19

    const/16 v22, 0x17

    aput-byte v4, v2, v22

    aput-byte v5, v2, v1

    const/16 v22, 0x19

    const/16 v24, 0x33

    aput-byte v24, v2, v22

    const/16 v22, 0x1a

    const/16 v24, 0x1e

    aput-byte v24, v2, v22

    const/16 v22, 0x24

    aput-byte v22, v2, v16

    const/16 v22, 0x1c

    const/16 v24, 0x2e

    aput-byte v24, v2, v22

    const/16 v22, 0x36

    aput-byte v22, v2, v23

    const/16 v22, 0x1e

    aput-byte v23, v2, v22

    const/16 v22, 0x1f

    const/16 v24, 0x27

    aput-byte v24, v2, v22

    const/16 v22, 0x32

    aput-byte v22, v2, v7

    const/16 v22, 0x2c

    aput-byte v22, v2, v13

    const/16 v22, 0x22

    aput-byte v7, v2, v22

    const/16 v22, 0x2f

    aput-byte v22, v2, v21

    const/16 v22, 0x24

    aput-byte v20, v2, v22

    const/16 v22, 0x25

    const/16 v24, 0x30

    aput-byte v24, v2, v22

    const/16 v22, 0x26

    const/16 v24, 0x26

    aput-byte v24, v2, v22

    const/16 v22, 0x27

    const/16 v24, 0x37

    aput-byte v24, v2, v22

    aput-byte v13, v2, v5

    const/16 v22, 0x34

    aput-byte v22, v2, v12

    const/16 v22, 0x2a

    const/16 v24, 0x2d

    aput-byte v24, v2, v22

    aput-byte v12, v2, v20

    const/16 v22, 0x2c

    const/16 v24, 0x31

    aput-byte v24, v2, v22

    const/16 v22, 0x2d

    aput-byte v21, v2, v22

    const/16 v22, 0x2e

    const/16 v24, 0x1c

    aput-byte v24, v2, v22

    const/16 v22, 0x2f

    const/16 v24, 0x1f

    aput-byte v24, v2, v22

    .line 5
    sput-object v2, Ljcifs/util/DES;->pc2:[B

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, 0x1010400

    aput v24, v2, v22

    const/high16 v22, 0x10000

    aput v22, v2, v3

    const/16 v22, 0x3

    const v24, 0x1010404

    aput v24, v2, v22

    const v22, 0x1010004

    aput v22, v2, v6

    const/16 v22, 0x5

    const v24, 0x10404

    aput v24, v2, v22

    aput v6, v2, v8

    const/16 v22, 0x7

    const/high16 v24, 0x10000

    aput v24, v2, v22

    const/16 v22, 0x400

    aput v22, v2, v0

    const v22, 0x1010400

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, 0x1010404

    aput v24, v2, v22

    const/16 v22, 0x400

    aput v22, v2, v10

    const v22, 0x1000404

    aput v22, v2, v15

    const/16 v22, 0xd

    const v24, 0x1010004

    aput v24, v2, v22

    const/high16 v22, 0x1000000

    aput v22, v2, v14

    const/16 v22, 0xf

    aput v6, v2, v22

    const/16 v22, 0x404

    aput v22, v2, v9

    const/16 v22, 0x11

    const v24, 0x1000400

    aput v24, v2, v22

    const v22, 0x1000400

    aput v22, v2, v17

    const/16 v22, 0x13

    const v24, 0x10400

    aput v24, v2, v22

    const v22, 0x10400

    aput v22, v2, v18

    const/16 v22, 0x15

    const/high16 v24, 0x1010000

    aput v24, v2, v22

    const/high16 v22, 0x1010000

    aput v22, v2, v19

    const/16 v22, 0x17

    const v24, 0x1000404

    aput v24, v2, v22

    const v22, 0x10004

    aput v22, v2, v1

    const/16 v22, 0x19

    const v24, 0x1000004

    aput v24, v2, v22

    const/16 v22, 0x1a

    aput v24, v2, v22

    const v22, 0x10004

    aput v22, v2, v16

    const/16 v22, 0x404

    aput v22, v2, v23

    const/16 v22, 0x1e

    const v24, 0x10404

    aput v24, v2, v22

    const/16 v22, 0x1f

    const/high16 v24, 0x1000000

    aput v24, v2, v22

    const/high16 v22, 0x10000

    aput v22, v2, v7

    const v22, 0x1010404

    aput v22, v2, v13

    const/16 v22, 0x22

    aput v6, v2, v22

    const/high16 v22, 0x1010000

    aput v22, v2, v21

    const/16 v22, 0x24

    const v24, 0x1010400

    aput v24, v2, v22

    const/16 v22, 0x25

    const/high16 v24, 0x1000000

    aput v24, v2, v22

    const/16 v22, 0x26

    aput v24, v2, v22

    const/16 v22, 0x27

    const/16 v24, 0x400

    aput v24, v2, v22

    const v22, 0x1010004

    aput v22, v2, v5

    const/high16 v22, 0x10000

    aput v22, v2, v12

    const/16 v22, 0x2a

    const v24, 0x10400

    aput v24, v2, v22

    const v22, 0x1000004

    aput v22, v2, v20

    const/16 v22, 0x2c

    const/16 v24, 0x400

    aput v24, v2, v22

    const/16 v22, 0x2d

    aput v6, v2, v22

    const/16 v22, 0x2e

    const v24, 0x1000404

    aput v24, v2, v22

    const/16 v22, 0x2f

    const v24, 0x10404

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x1010404

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, 0x10004

    aput v24, v2, v22

    const/16 v22, 0x32

    const/high16 v24, 0x1010000

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, 0x1000404

    aput v24, v2, v22

    const/16 v22, 0x34

    const v24, 0x1000004

    aput v24, v2, v22

    const/16 v22, 0x35

    const/16 v24, 0x404

    aput v24, v2, v22

    const/16 v22, 0x36

    const v24, 0x10404

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x1010400

    aput v24, v2, v22

    const/16 v22, 0x38

    const/16 v24, 0x404

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x1000400

    aput v24, v2, v22

    const/16 v22, 0x3a

    aput v24, v2, v22

    const/16 v22, 0x3c

    const v24, 0x10004

    aput v24, v2, v22

    const/16 v22, 0x3d

    const v24, 0x10400

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x1010004

    aput v24, v2, v22

    .line 6
    sput-object v2, Ljcifs/util/DES;->SP1:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, -0x7fef7fe0

    aput v24, v2, v22

    const v22, -0x7fff8000

    aput v22, v2, v4

    const v22, 0x8000

    aput v22, v2, v3

    const/16 v22, 0x3

    const v24, 0x108020

    aput v24, v2, v22

    const/high16 v22, 0x100000

    aput v22, v2, v6

    const/16 v22, 0x5

    aput v7, v2, v22

    const v22, -0x7fefffe0

    aput v22, v2, v8

    const/16 v22, 0x7

    const v24, -0x7fff7fe0

    aput v24, v2, v22

    const v22, -0x7fffffe0

    aput v22, v2, v0

    const v22, -0x7fef7fe0

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, -0x7fef8000

    aput v24, v2, v22

    const/high16 v22, -0x80000000

    aput v22, v2, v10

    const v22, -0x7fff8000

    aput v22, v2, v15

    const/16 v22, 0xd

    const/high16 v24, 0x100000

    aput v24, v2, v22

    aput v7, v2, v14

    const/16 v22, 0xf

    const v24, -0x7fefffe0

    aput v24, v2, v22

    const v22, 0x108000

    aput v22, v2, v9

    const/16 v22, 0x11

    const v24, 0x100020

    aput v24, v2, v22

    const v22, -0x7fff7fe0

    aput v22, v2, v17

    const/high16 v22, -0x80000000

    aput v22, v2, v18

    const/16 v22, 0x15

    const v24, 0x8000

    aput v24, v2, v22

    const v22, 0x108020

    aput v22, v2, v19

    const/16 v22, 0x17

    const/high16 v24, -0x7ff00000

    aput v24, v2, v22

    const v22, 0x100020

    aput v22, v2, v1

    const/16 v22, 0x19

    const v24, -0x7fffffe0

    aput v24, v2, v22

    const v22, 0x108000

    aput v22, v2, v16

    const/16 v22, 0x1c

    const v24, 0x8020

    aput v24, v2, v22

    const v22, -0x7fef8000

    aput v22, v2, v23

    const/16 v22, 0x1e

    const/high16 v24, -0x7ff00000

    aput v24, v2, v22

    const/16 v22, 0x1f

    const v24, 0x8020

    aput v24, v2, v22

    const v22, 0x108020

    aput v22, v2, v13

    const/16 v22, 0x22

    const v24, -0x7fefffe0

    aput v24, v2, v22

    const/high16 v22, 0x100000

    aput v22, v2, v21

    const/16 v22, 0x24

    const v24, -0x7fff7fe0

    aput v24, v2, v22

    const/16 v22, 0x25

    const/high16 v24, -0x7ff00000

    aput v24, v2, v22

    const/16 v22, 0x26

    const v24, -0x7fef8000

    aput v24, v2, v22

    const/16 v22, 0x27

    const v24, 0x8000

    aput v24, v2, v22

    const/high16 v22, -0x7ff00000

    aput v22, v2, v5

    const v22, -0x7fff8000

    aput v22, v2, v12

    const/16 v22, 0x2a

    aput v7, v2, v22

    const v22, -0x7fef7fe0

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x108020

    aput v24, v2, v22

    const/16 v22, 0x2d

    aput v7, v2, v22

    const/16 v22, 0x2e

    const v24, 0x8000

    aput v24, v2, v22

    const/16 v22, 0x2f

    const/high16 v24, -0x80000000

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x8020

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, -0x7fef8000

    aput v24, v2, v22

    const/16 v22, 0x32

    const/high16 v24, 0x100000

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, -0x7fffffe0

    aput v24, v2, v22

    const/16 v22, 0x34

    const v24, 0x100020

    aput v24, v2, v22

    const/16 v22, 0x35

    const v24, -0x7fff7fe0

    aput v24, v2, v22

    const/16 v22, 0x36

    const v24, -0x7fffffe0

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x100020

    aput v24, v2, v22

    const/16 v22, 0x38

    const v24, 0x108000

    aput v24, v2, v22

    const/16 v22, 0x3a

    const v24, -0x7fff8000

    aput v24, v2, v22

    const/16 v22, 0x3b

    const v24, 0x8020

    aput v24, v2, v22

    const/16 v22, 0x3c

    const/high16 v24, -0x80000000

    aput v24, v2, v22

    const/16 v22, 0x3d

    const v24, -0x7fefffe0

    aput v24, v2, v22

    const/16 v22, 0x3e

    const v24, -0x7fef7fe0

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x108000

    aput v24, v2, v22

    .line 7
    sput-object v2, Ljcifs/util/DES;->SP2:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const/16 v24, 0x208

    aput v24, v2, v22

    const v22, 0x8020200

    aput v22, v2, v4

    const/16 v22, 0x3

    const v24, 0x8020008

    aput v24, v2, v22

    const v22, 0x8000200

    aput v22, v2, v6

    const v22, 0x20208

    aput v22, v2, v8

    const/16 v22, 0x7

    const v24, 0x8000200

    aput v24, v2, v22

    const v22, 0x20008

    aput v22, v2, v0

    const v22, 0x8000008

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, 0x8000008

    aput v24, v2, v22

    const/high16 v22, 0x20000

    aput v22, v2, v10

    const v22, 0x8020208

    aput v22, v2, v15

    const/16 v22, 0xd

    const v24, 0x20008

    aput v24, v2, v22

    const/high16 v22, 0x8020000

    aput v22, v2, v14

    const/16 v22, 0xf

    const/16 v24, 0x208

    aput v24, v2, v22

    const/high16 v22, 0x8000000

    aput v22, v2, v9

    const/16 v22, 0x11

    aput v0, v2, v22

    const v22, 0x8020200

    aput v22, v2, v17

    const/16 v22, 0x13

    const/16 v24, 0x200

    aput v24, v2, v22

    const v22, 0x20200

    aput v22, v2, v18

    const/16 v22, 0x15

    const/high16 v24, 0x8020000

    aput v24, v2, v22

    const v22, 0x8020008

    aput v22, v2, v19

    const/16 v22, 0x17

    const v24, 0x20208

    aput v24, v2, v22

    const v22, 0x8000208

    aput v22, v2, v1

    const/16 v22, 0x19

    const v24, 0x20200

    aput v24, v2, v22

    const/16 v22, 0x1a

    const/high16 v24, 0x20000

    aput v24, v2, v22

    const v22, 0x8000208

    aput v22, v2, v16

    const/16 v22, 0x1c

    aput v0, v2, v22

    const v22, 0x8020208

    aput v22, v2, v23

    const/16 v22, 0x1e

    const/16 v24, 0x200

    aput v24, v2, v22

    const/16 v22, 0x1f

    const/high16 v24, 0x8000000

    aput v24, v2, v22

    const v22, 0x8020200

    aput v22, v2, v7

    const/high16 v22, 0x8000000

    aput v22, v2, v13

    const/16 v22, 0x22

    const v24, 0x20008

    aput v24, v2, v22

    const/16 v22, 0x208

    aput v22, v2, v21

    const/16 v22, 0x24

    const/high16 v24, 0x20000

    aput v24, v2, v22

    const/16 v22, 0x25

    const v24, 0x8020200

    aput v24, v2, v22

    const/16 v22, 0x26

    const v24, 0x8000200

    aput v24, v2, v22

    const/16 v22, 0x200

    aput v22, v2, v5

    const v22, 0x20008

    aput v22, v2, v12

    const/16 v22, 0x2a

    const v24, 0x8020208

    aput v24, v2, v22

    const v22, 0x8000200

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x8000008

    aput v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x200

    aput v24, v2, v22

    const/16 v22, 0x2f

    const v24, 0x8020008

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x8000208

    aput v24, v2, v22

    const/16 v22, 0x31

    const/high16 v24, 0x20000

    aput v24, v2, v22

    const/16 v22, 0x32

    const/high16 v24, 0x8000000

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, 0x8020208

    aput v24, v2, v22

    const/16 v22, 0x34

    aput v0, v2, v22

    const/16 v22, 0x35

    const v24, 0x20208

    aput v24, v2, v22

    const/16 v22, 0x36

    const v24, 0x20200

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x8000008

    aput v24, v2, v22

    const/16 v22, 0x38

    const/high16 v24, 0x8020000

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x8000208

    aput v24, v2, v22

    const/16 v22, 0x3a

    const/16 v24, 0x208

    aput v24, v2, v22

    const/16 v22, 0x3b

    const/high16 v24, 0x8020000

    aput v24, v2, v22

    const/16 v22, 0x3c

    const v24, 0x20208

    aput v24, v2, v22

    const/16 v22, 0x3d

    aput v0, v2, v22

    const/16 v22, 0x3e

    const v24, 0x8020008

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x20200

    aput v24, v2, v22

    .line 8
    sput-object v2, Ljcifs/util/DES;->SP3:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, 0x802001

    aput v24, v2, v22

    const/16 v22, 0x2081

    aput v22, v2, v4

    aput v22, v2, v3

    const/16 v22, 0x3

    const/16 v24, 0x80

    aput v24, v2, v22

    const v22, 0x802080

    aput v22, v2, v6

    const/16 v22, 0x5

    const v24, 0x800081

    aput v24, v2, v22

    const v22, 0x800001

    aput v22, v2, v8

    const/16 v22, 0x7

    const/16 v24, 0x2001

    aput v24, v2, v22

    const v22, 0x802000

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, 0x802000

    aput v24, v2, v22

    const v22, 0x802081

    aput v22, v2, v10

    const/16 v22, 0x81

    aput v22, v2, v15

    const v22, 0x800080

    aput v22, v2, v14

    const/16 v22, 0xf

    const v24, 0x800001

    aput v24, v2, v22

    aput v4, v2, v9

    const/16 v22, 0x11

    const/16 v24, 0x2000

    aput v24, v2, v22

    const/high16 v22, 0x800000

    aput v22, v2, v17

    const/16 v22, 0x13

    const v24, 0x802001

    aput v24, v2, v22

    const/16 v22, 0x80

    aput v22, v2, v18

    const/16 v22, 0x15

    const/high16 v24, 0x800000

    aput v24, v2, v22

    const/16 v22, 0x2001

    aput v22, v2, v19

    const/16 v22, 0x17

    const/16 v24, 0x2080

    aput v24, v2, v22

    const v22, 0x800081

    aput v22, v2, v1

    const/16 v22, 0x19

    aput v4, v2, v22

    const/16 v22, 0x1a

    aput v24, v2, v22

    const v22, 0x800080

    aput v22, v2, v16

    const/16 v22, 0x1c

    const/16 v24, 0x2000

    aput v24, v2, v22

    const v22, 0x802080

    aput v22, v2, v23

    const/16 v22, 0x1e

    const v24, 0x802081

    aput v24, v2, v22

    const/16 v22, 0x1f

    const/16 v24, 0x81

    aput v24, v2, v22

    const v22, 0x800080

    aput v22, v2, v7

    const v22, 0x800001

    aput v22, v2, v13

    const/16 v22, 0x22

    const v24, 0x802000

    aput v24, v2, v22

    const v22, 0x802081

    aput v22, v2, v21

    const/16 v22, 0x24

    const/16 v24, 0x81

    aput v24, v2, v22

    const/16 v22, 0x27

    const v24, 0x802000

    aput v24, v2, v22

    const/16 v22, 0x2080

    aput v22, v2, v5

    const v22, 0x800080

    aput v22, v2, v12

    const/16 v22, 0x2a

    const v24, 0x800081

    aput v24, v2, v22

    aput v4, v2, v20

    const/16 v22, 0x2c

    const v24, 0x802001

    aput v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x2081

    aput v24, v2, v22

    const/16 v22, 0x2e

    aput v24, v2, v22

    const/16 v22, 0x2f

    const/16 v24, 0x80

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x802081

    aput v24, v2, v22

    const/16 v22, 0x31

    const/16 v24, 0x81

    aput v24, v2, v22

    const/16 v22, 0x32

    aput v4, v2, v22

    const/16 v22, 0x33

    const/16 v24, 0x2000

    aput v24, v2, v22

    const/16 v22, 0x34

    const v24, 0x800001

    aput v24, v2, v22

    const/16 v22, 0x35

    const/16 v24, 0x2001

    aput v24, v2, v22

    const/16 v22, 0x36

    const v24, 0x802080

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x800081

    aput v24, v2, v22

    const/16 v22, 0x38

    const/16 v24, 0x2001

    aput v24, v2, v22

    const/16 v22, 0x39

    const/16 v24, 0x2080

    aput v24, v2, v22

    const/16 v22, 0x3a

    const/high16 v24, 0x800000

    aput v24, v2, v22

    const/16 v22, 0x3b

    const v24, 0x802001

    aput v24, v2, v22

    const/16 v22, 0x3c

    const/16 v24, 0x80

    aput v24, v2, v22

    const/16 v22, 0x3d

    const/high16 v24, 0x800000

    aput v24, v2, v22

    const/16 v22, 0x3e

    const/16 v24, 0x2000

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x802080

    aput v24, v2, v22

    .line 9
    sput-object v2, Ljcifs/util/DES;->SP4:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const/16 v24, 0x100

    aput v24, v2, v22

    const v22, 0x2080100

    aput v22, v2, v4

    const/high16 v22, 0x2080000

    aput v22, v2, v3

    const/16 v22, 0x3

    const v24, 0x42000100  # 32.000977f

    aput v24, v2, v22

    const/high16 v22, 0x80000

    aput v22, v2, v6

    const/16 v22, 0x5

    const/16 v24, 0x100

    aput v24, v2, v22

    const/high16 v22, 0x40000000  # 2.0f

    aput v22, v2, v8

    const/16 v22, 0x7

    const/high16 v24, 0x2080000

    aput v24, v2, v22

    const v22, 0x40080100

    aput v22, v2, v0

    const/high16 v22, 0x80000

    aput v22, v2, v11

    const/16 v22, 0xa

    const v24, 0x2000100

    aput v24, v2, v22

    const v22, 0x40080100

    aput v22, v2, v10

    const v22, 0x42000100  # 32.000977f

    aput v22, v2, v15

    const/16 v22, 0xd

    const/high16 v24, 0x42080000  # 34.0f

    aput v24, v2, v22

    const v22, 0x80100

    aput v22, v2, v14

    const/16 v22, 0xf

    const/high16 v24, 0x40000000  # 2.0f

    aput v24, v2, v22

    const/high16 v22, 0x2000000

    aput v22, v2, v9

    const/16 v22, 0x11

    const/high16 v24, 0x40080000  # 2.125f

    aput v24, v2, v22

    const/high16 v22, 0x40080000  # 2.125f

    aput v22, v2, v17

    const v22, 0x40000100  # 2.000061f

    aput v22, v2, v18

    const/16 v22, 0x15

    const v24, 0x42080100  # 34.000977f

    aput v24, v2, v22

    const v22, 0x42080100  # 34.000977f

    aput v22, v2, v19

    const/16 v22, 0x17

    const v24, 0x2000100

    aput v24, v2, v22

    const/high16 v22, 0x42080000  # 34.0f

    aput v22, v2, v1

    const/16 v22, 0x19

    const v24, 0x40000100  # 2.000061f

    aput v24, v2, v22

    const/high16 v22, 0x42000000  # 32.0f

    aput v22, v2, v16

    const/16 v22, 0x1c

    const v24, 0x2080100

    aput v24, v2, v22

    const/high16 v22, 0x2000000

    aput v22, v2, v23

    const/16 v22, 0x1e

    const/high16 v24, 0x42000000  # 32.0f

    aput v24, v2, v22

    const/16 v22, 0x1f

    const v24, 0x80100

    aput v24, v2, v22

    const/high16 v22, 0x80000

    aput v22, v2, v7

    const v22, 0x42000100  # 32.000977f

    aput v22, v2, v13

    const/16 v22, 0x22

    const/16 v24, 0x100

    aput v24, v2, v22

    const/high16 v22, 0x2000000

    aput v22, v2, v21

    const/16 v22, 0x24

    const/high16 v24, 0x40000000  # 2.0f

    aput v24, v2, v22

    const/16 v22, 0x25

    const/high16 v24, 0x2080000

    aput v24, v2, v22

    const/16 v22, 0x26

    const v24, 0x42000100  # 32.000977f

    aput v24, v2, v22

    const/16 v22, 0x27

    const v24, 0x40080100

    aput v24, v2, v22

    const v22, 0x2000100

    aput v22, v2, v5

    const/high16 v22, 0x40000000  # 2.0f

    aput v22, v2, v12

    const/16 v22, 0x2a

    const/high16 v24, 0x42080000  # 34.0f

    aput v24, v2, v22

    const v22, 0x2080100

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x40080100

    aput v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x100

    aput v24, v2, v22

    const/16 v22, 0x2e

    const/high16 v24, 0x2000000

    aput v24, v2, v22

    const/16 v22, 0x2f

    const/high16 v24, 0x42080000  # 34.0f

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x42080100  # 34.000977f

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, 0x80100

    aput v24, v2, v22

    const/16 v22, 0x32

    const/high16 v24, 0x42000000  # 32.0f

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, 0x42080100  # 34.000977f

    aput v24, v2, v22

    const/16 v22, 0x34

    const/high16 v24, 0x2080000

    aput v24, v2, v22

    const/16 v22, 0x36

    const/high16 v24, 0x40080000  # 2.125f

    aput v24, v2, v22

    const/16 v22, 0x37

    const/high16 v24, 0x42000000  # 32.0f

    aput v24, v2, v22

    const/16 v22, 0x38

    const v24, 0x80100

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x2000100

    aput v24, v2, v22

    const/16 v22, 0x3a

    const v24, 0x40000100  # 2.000061f

    aput v24, v2, v22

    const/16 v22, 0x3b

    const/high16 v24, 0x80000

    aput v24, v2, v22

    const/16 v22, 0x3d

    const/high16 v24, 0x40080000  # 2.125f

    aput v24, v2, v22

    const/16 v22, 0x3e

    const v24, 0x2080100

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x40000100  # 2.000061f

    aput v24, v2, v22

    .line 10
    sput-object v2, Ljcifs/util/DES;->SP5:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, 0x20000010

    aput v24, v2, v22

    const/high16 v22, 0x20400000

    aput v22, v2, v4

    const/16 v22, 0x4000

    aput v22, v2, v3

    const/16 v22, 0x3

    const v24, 0x20404010

    aput v24, v2, v22

    const/high16 v22, 0x20400000

    aput v22, v2, v6

    const/16 v22, 0x5

    aput v9, v2, v22

    const v22, 0x20404010

    aput v22, v2, v8

    const/16 v22, 0x7

    const/high16 v24, 0x400000

    aput v24, v2, v22

    const v22, 0x20004000

    aput v22, v2, v0

    const v22, 0x404010

    aput v22, v2, v11

    const/16 v22, 0xa

    aput v24, v2, v22

    const v22, 0x20000010

    aput v22, v2, v10

    const v22, 0x400010

    aput v22, v2, v15

    const/16 v22, 0xd

    const v24, 0x20004000

    aput v24, v2, v22

    const/high16 v22, 0x20000000

    aput v22, v2, v14

    const/16 v22, 0xf

    const/16 v24, 0x4010

    aput v24, v2, v22

    const/16 v22, 0x11

    const v24, 0x400010

    aput v24, v2, v22

    const v22, 0x20004010

    aput v22, v2, v17

    const/16 v22, 0x13

    const/16 v24, 0x4000

    aput v24, v2, v22

    const v22, 0x404000

    aput v22, v2, v18

    const/16 v22, 0x15

    const v24, 0x20004010

    aput v24, v2, v22

    aput v9, v2, v19

    const/16 v22, 0x17

    const v24, 0x20400010

    aput v24, v2, v22

    const v22, 0x20400010

    aput v22, v2, v1

    const/16 v22, 0x1a

    const v24, 0x404010

    aput v24, v2, v22

    const v22, 0x20404000

    aput v22, v2, v16

    const/16 v22, 0x1c

    const/16 v24, 0x4010

    aput v24, v2, v22

    const v22, 0x404000

    aput v22, v2, v23

    const/16 v22, 0x1e

    const v24, 0x20404000

    aput v24, v2, v22

    const/16 v22, 0x1f

    const/high16 v24, 0x20000000

    aput v24, v2, v22

    const v22, 0x20004000

    aput v22, v2, v7

    aput v9, v2, v13

    const/16 v22, 0x22

    const v24, 0x20400010

    aput v24, v2, v22

    const v22, 0x404000

    aput v22, v2, v21

    const/16 v22, 0x24

    const v24, 0x20404010

    aput v24, v2, v22

    const/16 v22, 0x25

    const/high16 v24, 0x400000

    aput v24, v2, v22

    const/16 v22, 0x26

    const/16 v24, 0x4010

    aput v24, v2, v22

    const/16 v22, 0x27

    const v24, 0x20000010

    aput v24, v2, v22

    const/high16 v22, 0x400000

    aput v22, v2, v5

    const v22, 0x20004000

    aput v22, v2, v12

    const/16 v22, 0x2a

    const/high16 v24, 0x20000000

    aput v24, v2, v22

    const/16 v22, 0x4010

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x20000010

    aput v24, v2, v22

    const/16 v22, 0x2d

    const v24, 0x20404010

    aput v24, v2, v22

    const/16 v22, 0x2e

    const v24, 0x404000

    aput v24, v2, v22

    const/16 v22, 0x2f

    const/high16 v24, 0x20400000

    aput v24, v2, v22

    const/16 v22, 0x30

    const v24, 0x404010

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, 0x20404000

    aput v24, v2, v22

    const/16 v22, 0x33

    const v24, 0x20400010

    aput v24, v2, v22

    const/16 v22, 0x34

    aput v9, v2, v22

    const/16 v22, 0x35

    const/16 v24, 0x4000

    aput v24, v2, v22

    const/16 v22, 0x36

    const/high16 v24, 0x20400000

    aput v24, v2, v22

    const/16 v22, 0x37

    const v24, 0x404010

    aput v24, v2, v22

    const/16 v22, 0x38

    const/16 v24, 0x4000

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x400010

    aput v24, v2, v22

    const/16 v22, 0x3a

    const v24, 0x20004010

    aput v24, v2, v22

    const/16 v22, 0x3c

    const v24, 0x20404000

    aput v24, v2, v22

    const/16 v22, 0x3d

    const/high16 v24, 0x20000000

    aput v24, v2, v22

    const/16 v22, 0x3e

    const v24, 0x400010

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x20004010

    aput v24, v2, v22

    .line 11
    sput-object v2, Ljcifs/util/DES;->SP6:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const/high16 v24, 0x200000

    aput v24, v2, v22

    const v22, 0x4200002

    aput v22, v2, v4

    const v22, 0x4000802

    aput v22, v2, v3

    const/16 v22, 0x800

    aput v22, v2, v6

    const/16 v22, 0x5

    const v24, 0x4000802

    aput v24, v2, v22

    const v22, 0x200802

    aput v22, v2, v8

    const/16 v22, 0x7

    const v24, 0x4200800

    aput v24, v2, v22

    const v22, 0x4200802

    aput v22, v2, v0

    const/high16 v22, 0x200000

    aput v22, v2, v11

    const v22, 0x4000002

    aput v22, v2, v10

    aput v3, v2, v15

    const/16 v22, 0xd

    const/high16 v24, 0x4000000

    aput v24, v2, v22

    const v22, 0x4200002

    aput v22, v2, v14

    const/16 v22, 0xf

    const/16 v24, 0x802

    aput v24, v2, v22

    const v22, 0x4000800

    aput v22, v2, v9

    const/16 v22, 0x11

    const v24, 0x200802

    aput v24, v2, v22

    const v22, 0x200002

    aput v22, v2, v17

    const/16 v22, 0x13

    const v24, 0x4000800

    aput v24, v2, v22

    const v22, 0x4000002

    aput v22, v2, v18

    const/16 v22, 0x15

    const/high16 v24, 0x4200000

    aput v24, v2, v22

    const v22, 0x4200800

    aput v22, v2, v19

    const/16 v22, 0x17

    const v24, 0x200002

    aput v24, v2, v22

    const/high16 v22, 0x4200000

    aput v22, v2, v1

    const/16 v22, 0x19

    const/16 v24, 0x800

    aput v24, v2, v22

    const/16 v22, 0x1a

    const/16 v24, 0x802

    aput v24, v2, v22

    const v22, 0x4200802

    aput v22, v2, v16

    const/16 v22, 0x1c

    const v24, 0x200800

    aput v24, v2, v22

    aput v3, v2, v23

    const/16 v22, 0x1e

    const/high16 v24, 0x4000000

    aput v24, v2, v22

    const/16 v22, 0x1f

    const v24, 0x200800

    aput v24, v2, v22

    const/high16 v22, 0x4000000

    aput v22, v2, v7

    const v22, 0x200800

    aput v22, v2, v13

    const/16 v22, 0x22

    const/high16 v24, 0x200000

    aput v24, v2, v22

    const v22, 0x4000802

    aput v22, v2, v21

    const/16 v22, 0x24

    const v24, 0x4000802

    aput v24, v2, v22

    const/16 v22, 0x25

    const v24, 0x4200002

    aput v24, v2, v22

    const/16 v22, 0x26

    aput v24, v2, v22

    const/16 v22, 0x27

    aput v3, v2, v22

    const v22, 0x200002

    aput v22, v2, v5

    const/high16 v22, 0x4000000

    aput v22, v2, v12

    const/16 v22, 0x2a

    const v24, 0x4000800

    aput v24, v2, v22

    const/high16 v22, 0x200000

    aput v22, v2, v20

    const/16 v22, 0x2c

    const v24, 0x4200800

    aput v24, v2, v22

    const/16 v22, 0x2d

    const/16 v24, 0x802

    aput v24, v2, v22

    const/16 v22, 0x2e

    const v24, 0x200802

    aput v24, v2, v22

    const/16 v22, 0x2f

    const v24, 0x4200800

    aput v24, v2, v22

    const/16 v22, 0x30

    const/16 v24, 0x802

    aput v24, v2, v22

    const/16 v22, 0x31

    const v24, 0x4000002

    aput v24, v2, v22

    const/16 v22, 0x32

    const v24, 0x4200802

    aput v24, v2, v22

    const/16 v22, 0x33

    const/high16 v24, 0x4200000

    aput v24, v2, v22

    const/16 v22, 0x34

    const v24, 0x200800

    aput v24, v2, v22

    const/16 v22, 0x36

    aput v3, v2, v22

    const/16 v22, 0x37

    const v24, 0x4200802

    aput v24, v2, v22

    const/16 v22, 0x39

    const v24, 0x200802

    aput v24, v2, v22

    const/16 v22, 0x3a

    const/high16 v24, 0x4200000

    aput v24, v2, v22

    const/16 v22, 0x3b

    const/16 v24, 0x800

    aput v24, v2, v22

    const/16 v22, 0x3c

    const v24, 0x4000002

    aput v24, v2, v22

    const/16 v22, 0x3d

    const v24, 0x4000800

    aput v24, v2, v22

    const/16 v22, 0x3e

    const/16 v24, 0x800

    aput v24, v2, v22

    const/16 v22, 0x3f

    const v24, 0x200002

    aput v24, v2, v22

    .line 12
    sput-object v2, Ljcifs/util/DES;->SP7:[I

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v22, 0x0

    const v24, 0x10001040

    aput v24, v2, v22

    const/16 v22, 0x1000

    aput v22, v2, v4

    const/high16 v4, 0x40000

    aput v4, v2, v3

    const/4 v3, 0x3

    const v4, 0x10041040

    aput v4, v2, v3

    const/high16 v3, 0x10000000

    aput v3, v2, v6

    const/4 v3, 0x5

    const v4, 0x10001040

    aput v4, v2, v3

    const/16 v3, 0x40

    aput v3, v2, v8

    const/4 v3, 0x7

    const/high16 v4, 0x10000000

    aput v4, v2, v3

    const v3, 0x40040

    aput v3, v2, v0

    const/high16 v0, 0x10040000

    aput v0, v2, v11

    const/16 v0, 0xa

    const v3, 0x10041040

    aput v3, v2, v0

    const v0, 0x41000

    aput v0, v2, v10

    const v0, 0x10041000

    aput v0, v2, v15

    const/16 v0, 0xd

    const v3, 0x41040

    aput v3, v2, v0

    const/16 v0, 0x1000

    aput v0, v2, v14

    const/16 v0, 0xf

    const/16 v3, 0x40

    aput v3, v2, v0

    const/high16 v0, 0x10040000

    aput v0, v2, v9

    const/16 v0, 0x11

    const v3, 0x10000040

    aput v3, v2, v0

    const v0, 0x10001000

    aput v0, v2, v17

    const/16 v0, 0x13

    const/16 v3, 0x1040

    aput v3, v2, v0

    const v0, 0x41000

    aput v0, v2, v18

    const/16 v0, 0x15

    const v3, 0x40040

    aput v3, v2, v0

    const v0, 0x10040040

    aput v0, v2, v19

    const/16 v0, 0x17

    const v3, 0x10041000

    aput v3, v2, v0

    const/16 v0, 0x1040

    aput v0, v2, v1

    const v0, 0x10040040

    aput v0, v2, v16

    const/16 v0, 0x1c

    const v1, 0x10000040

    aput v1, v2, v0

    const v0, 0x10001000

    aput v0, v2, v23

    const/16 v0, 0x1e

    const v1, 0x41040

    aput v1, v2, v0

    const/16 v0, 0x1f

    const/high16 v1, 0x40000

    aput v1, v2, v0

    const v0, 0x41040

    aput v0, v2, v7

    const/high16 v0, 0x40000

    aput v0, v2, v13

    const/16 v0, 0x22

    const v1, 0x10041000

    aput v1, v2, v0

    const/16 v0, 0x1000

    aput v0, v2, v21

    const/16 v0, 0x24

    const/16 v1, 0x40

    aput v1, v2, v0

    const/16 v0, 0x25

    const v1, 0x10040040

    aput v1, v2, v0

    const/16 v0, 0x26

    const/16 v1, 0x1000

    aput v1, v2, v0

    const/16 v0, 0x27

    const v1, 0x41040

    aput v1, v2, v0

    const v0, 0x10001000

    aput v0, v2, v5

    const/16 v0, 0x40

    aput v0, v2, v12

    const/16 v0, 0x2a

    const v1, 0x10000040

    aput v1, v2, v0

    const/high16 v0, 0x10040000

    aput v0, v2, v20

    const/16 v0, 0x2c

    const v1, 0x10040040

    aput v1, v2, v0

    const/16 v0, 0x2d

    const/high16 v1, 0x10000000

    aput v1, v2, v0

    const/16 v0, 0x2e

    const/high16 v1, 0x40000

    aput v1, v2, v0

    const/16 v0, 0x2f

    const v1, 0x10001040

    aput v1, v2, v0

    const/16 v0, 0x31

    const v1, 0x10041040

    aput v1, v2, v0

    const/16 v0, 0x32

    const v1, 0x40040

    aput v1, v2, v0

    const/16 v0, 0x33

    const v1, 0x10000040

    aput v1, v2, v0

    const/16 v0, 0x34

    const/high16 v1, 0x10040000

    aput v1, v2, v0

    const/16 v0, 0x35

    const v1, 0x10001000

    aput v1, v2, v0

    const/16 v0, 0x36

    const v1, 0x10001040

    aput v1, v2, v0

    const/16 v0, 0x38

    const v1, 0x10041040

    aput v1, v2, v0

    const/16 v0, 0x39

    const v1, 0x41000

    aput v1, v2, v0

    const/16 v0, 0x3a

    aput v1, v2, v0

    const/16 v0, 0x3b

    const/16 v1, 0x1040

    aput v1, v2, v0

    const/16 v0, 0x3c

    aput v1, v2, v0

    const/16 v0, 0x3d

    const v1, 0x40040

    aput v1, v2, v0

    const/16 v0, 0x3e

    const/high16 v1, 0x10000000

    aput v1, v2, v0

    const/16 v0, 0x3f

    const v1, 0x10041000

    aput v1, v2, v0

    .line 13
    sput-object v2, Ljcifs/util/DES;->SP8:[I

    return-void

    :array_ce8
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data

    :array_cf0
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_d24
    .array-data 4
        0x1
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
        0xf
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1b
        0x1c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Ljcifs/util/DES;->encryptKeys:[I

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Ljcifs/util/DES;->encryptKeys:[I

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    .line 9
    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_21

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 10
    invoke-static {p1, v0}, Ljcifs/util/DES;->makeSMBKey([B[B)V

    .line 11
    invoke-virtual {p0, v0}, Ljcifs/util/DES;->setKey([B)V

    goto :goto_24

    .line 12
    :cond_21
    invoke-virtual {p0, p1}, Ljcifs/util/DES;->setKey([B)V

    :goto_24
    return-void
.end method

.method private cookey([I[I)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    const/16 v3, 0x10

    .line 6
    if-lt v0, v3, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    add-int/lit8 v4, v1, 0x1

    .line 11
    aget v1, p1, v1

    .line 13
    add-int/lit8 v5, v4, 0x1

    .line 15
    aget v4, p1, v4

    .line 17
    const/high16 v6, 0xfc0000

    .line 19
    and-int v7, v1, v6

    .line 21
    shl-int/lit8 v7, v7, 0x6

    .line 23
    aput v7, p2, v2

    .line 25
    and-int/lit16 v8, v1, 0xfc0

    .line 27
    shl-int/lit8 v8, v8, 0xa

    .line 29
    or-int/2addr v7, v8

    .line 30
    aput v7, p2, v2

    .line 32
    and-int/2addr v6, v4

    .line 33
    ushr-int/lit8 v6, v6, 0xa

    .line 35
    or-int/2addr v6, v7

    .line 36
    aput v6, p2, v2

    .line 38
    and-int/lit16 v7, v4, 0xfc0

    .line 40
    ushr-int/lit8 v7, v7, 0x6

    .line 42
    or-int/2addr v6, v7

    .line 43
    aput v6, p2, v2

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 47
    const v6, 0x3f000

    .line 50
    and-int v7, v1, v6

    .line 52
    shl-int/lit8 v7, v7, 0xc

    .line 54
    aput v7, p2, v2

    .line 56
    and-int/lit8 v1, v1, 0x3f

    .line 58
    shl-int/2addr v1, v3

    .line 59
    or-int/2addr v1, v7

    .line 60
    aput v1, p2, v2

    .line 62
    and-int v3, v4, v6

    .line 64
    ushr-int/lit8 v3, v3, 0x4

    .line 66
    or-int/2addr v1, v3

    .line 67
    aput v1, p2, v2

    .line 69
    and-int/lit8 v3, v4, 0x3f

    .line 71
    or-int/2addr v1, v3

    .line 72
    aput v1, p2, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 78
    move v1, v5

    .line 79
    goto :goto_3
.end method

.method private decrypt([BI[BI)V
    .registers 8

    .line 1
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljcifs/util/DES;->squashBytesToInts([BI[III)V

    .line 2
    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object p2, p0, Ljcifs/util/DES;->decryptKeys:[I

    invoke-direct {p0, p1, p1, p2}, Ljcifs/util/DES;->des([I[I[I)V

    .line 3
    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {p1, v1, p3, p4, v2}, Ljcifs/util/DES;->spreadIntsToBytes([II[BII)V

    return-void
.end method

.method private des([I[I[I)V
    .registers 26

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    aget v3, p1, v2

    .line 7
    ushr-int/lit8 v4, v1, 0x4

    .line 9
    xor-int/2addr v4, v3

    .line 10
    const v5, 0xf0f0f0f

    .line 13
    and-int/2addr v4, v5

    .line 14
    xor-int/2addr v3, v4

    .line 15
    shl-int/lit8 v4, v4, 0x4

    .line 17
    xor-int/2addr v1, v4

    .line 18
    ushr-int/lit8 v4, v1, 0x10

    .line 20
    xor-int/2addr v4, v3

    .line 21
    const v6, 0xffff

    .line 24
    and-int/2addr v4, v6

    .line 25
    xor-int/2addr v3, v4

    .line 26
    shl-int/lit8 v4, v4, 0x10

    .line 28
    xor-int/2addr v1, v4

    .line 29
    ushr-int/lit8 v4, v3, 0x2

    .line 31
    xor-int/2addr v4, v1

    .line 32
    const v7, 0x33333333

    .line 35
    and-int/2addr v4, v7

    .line 36
    xor-int/2addr v1, v4

    .line 37
    shl-int/lit8 v4, v4, 0x2

    .line 39
    xor-int/2addr v3, v4

    .line 40
    ushr-int/lit8 v4, v3, 0x8

    .line 42
    xor-int/2addr v4, v1

    .line 43
    const v8, 0xff00ff

    .line 46
    and-int/2addr v4, v8

    .line 47
    xor-int/2addr v1, v4

    .line 48
    const/16 v9, 0x8

    .line 50
    shl-int/2addr v4, v9

    .line 51
    xor-int/2addr v3, v4

    .line 52
    shl-int/lit8 v4, v3, 0x1

    .line 54
    ushr-int/lit8 v3, v3, 0x1f

    .line 56
    and-int/2addr v3, v2

    .line 57
    or-int/2addr v3, v4

    .line 58
    xor-int v4, v1, v3

    .line 60
    const v10, -0x55555556

    .line 63
    and-int/2addr v4, v10

    .line 64
    xor-int/2addr v1, v4

    .line 65
    xor-int/2addr v3, v4

    .line 66
    shl-int/lit8 v4, v1, 0x1

    .line 68
    ushr-int/lit8 v1, v1, 0x1f

    .line 70
    and-int/2addr v1, v2

    .line 71
    or-int/2addr v1, v4

    .line 72
    move v4, v0

    .line 73
    move v11, v4

    .line 74
    :goto_49
    if-lt v4, v9, :cond_7c

    .line 76
    shl-int/lit8 v4, v3, 0x1f

    .line 78
    ushr-int/2addr v3, v2

    .line 79
    or-int/2addr v3, v4

    .line 80
    xor-int v4, v1, v3

    .line 82
    and-int/2addr v4, v10

    .line 83
    xor-int/2addr v1, v4

    .line 84
    xor-int/2addr v3, v4

    .line 85
    shl-int/lit8 v4, v1, 0x1f

    .line 87
    ushr-int/2addr v1, v2

    .line 88
    or-int/2addr v1, v4

    .line 89
    ushr-int/lit8 v4, v1, 0x8

    .line 91
    xor-int/2addr v4, v3

    .line 92
    and-int/2addr v4, v8

    .line 93
    xor-int/2addr v3, v4

    .line 94
    shl-int/2addr v4, v9

    .line 95
    xor-int/2addr v1, v4

    .line 96
    ushr-int/lit8 v4, v1, 0x2

    .line 98
    xor-int/2addr v4, v3

    .line 99
    and-int/2addr v4, v7

    .line 100
    xor-int/2addr v3, v4

    .line 101
    shl-int/lit8 v4, v4, 0x2

    .line 103
    xor-int/2addr v1, v4

    .line 104
    ushr-int/lit8 v4, v3, 0x10

    .line 106
    xor-int/2addr v4, v1

    .line 107
    and-int/2addr v4, v6

    .line 108
    xor-int/2addr v1, v4

    .line 109
    shl-int/lit8 v4, v4, 0x10

    .line 111
    xor-int/2addr v3, v4

    .line 112
    ushr-int/lit8 v4, v3, 0x4

    .line 114
    xor-int/2addr v4, v1

    .line 115
    and-int/2addr v4, v5

    .line 116
    xor-int/2addr v1, v4

    .line 117
    shl-int/lit8 v4, v4, 0x4

    .line 119
    xor-int/2addr v3, v4

    .line 120
    aput v3, p2, v0

    .line 122
    aput v1, p2, v2

    .line 124
    return-void

    .line 125
    :cond_7c
    shl-int/lit8 v12, v3, 0x1c

    .line 127
    ushr-int/lit8 v13, v3, 0x4

    .line 129
    or-int/2addr v12, v13

    .line 130
    add-int/lit8 v13, v11, 0x1

    .line 132
    aget v11, p3, v11

    .line 134
    xor-int/2addr v11, v12

    .line 135
    sget-object v12, Ljcifs/util/DES;->SP7:[I

    .line 137
    and-int/lit8 v14, v11, 0x3f

    .line 139
    aget v14, v12, v14

    .line 141
    sget-object v15, Ljcifs/util/DES;->SP5:[I

    .line 143
    ushr-int/lit8 v16, v11, 0x8

    .line 145
    and-int/lit8 v16, v16, 0x3f

    .line 147
    aget v16, v15, v16

    .line 149
    or-int v14, v14, v16

    .line 151
    sget-object v16, Ljcifs/util/DES;->SP3:[I

    .line 153
    ushr-int/lit8 v17, v11, 0x10

    .line 155
    and-int/lit8 v17, v17, 0x3f

    .line 157
    aget v17, v16, v17

    .line 159
    or-int v14, v14, v17

    .line 161
    sget-object v17, Ljcifs/util/DES;->SP1:[I

    .line 163
    ushr-int/lit8 v11, v11, 0x18

    .line 165
    and-int/lit8 v11, v11, 0x3f

    .line 167
    aget v11, v17, v11

    .line 169
    or-int/2addr v11, v14

    .line 170
    add-int/lit8 v14, v13, 0x1

    .line 172
    aget v13, p3, v13

    .line 174
    xor-int/2addr v13, v3

    .line 175
    sget-object v18, Ljcifs/util/DES;->SP8:[I

    .line 177
    and-int/lit8 v19, v13, 0x3f

    .line 179
    aget v19, v18, v19

    .line 181
    or-int v11, v11, v19

    .line 183
    sget-object v19, Ljcifs/util/DES;->SP6:[I

    .line 185
    ushr-int/lit8 v20, v13, 0x8

    .line 187
    and-int/lit8 v20, v20, 0x3f

    .line 189
    aget v20, v19, v20

    .line 191
    or-int v11, v11, v20

    .line 193
    sget-object v20, Ljcifs/util/DES;->SP4:[I

    .line 195
    ushr-int/lit8 v21, v13, 0x10

    .line 197
    and-int/lit8 v21, v21, 0x3f

    .line 199
    aget v21, v20, v21

    .line 201
    or-int v11, v11, v21

    .line 203
    sget-object v21, Ljcifs/util/DES;->SP2:[I

    .line 205
    ushr-int/lit8 v13, v13, 0x18

    .line 207
    and-int/lit8 v13, v13, 0x3f

    .line 209
    aget v13, v21, v13

    .line 211
    or-int/2addr v11, v13

    .line 212
    xor-int/2addr v1, v11

    .line 213
    shl-int/lit8 v11, v1, 0x1c

    .line 215
    ushr-int/lit8 v13, v1, 0x4

    .line 217
    or-int/2addr v11, v13

    .line 218
    add-int/lit8 v13, v14, 0x1

    .line 220
    aget v14, p3, v14

    .line 222
    xor-int/2addr v11, v14

    .line 223
    and-int/lit8 v14, v11, 0x3f

    .line 225
    aget v12, v12, v14

    .line 227
    ushr-int/lit8 v14, v11, 0x8

    .line 229
    and-int/lit8 v14, v14, 0x3f

    .line 231
    aget v14, v15, v14

    .line 233
    or-int/2addr v12, v14

    .line 234
    ushr-int/lit8 v14, v11, 0x10

    .line 236
    and-int/lit8 v14, v14, 0x3f

    .line 238
    aget v14, v16, v14

    .line 240
    or-int/2addr v12, v14

    .line 241
    ushr-int/lit8 v11, v11, 0x18

    .line 243
    and-int/lit8 v11, v11, 0x3f

    .line 245
    aget v11, v17, v11

    .line 247
    or-int/2addr v11, v12

    .line 248
    add-int/lit8 v12, v13, 0x1

    .line 250
    aget v13, p3, v13

    .line 252
    xor-int/2addr v13, v1

    .line 253
    and-int/lit8 v14, v13, 0x3f

    .line 255
    aget v14, v18, v14

    .line 257
    or-int/2addr v11, v14

    .line 258
    ushr-int/lit8 v14, v13, 0x8

    .line 260
    and-int/lit8 v14, v14, 0x3f

    .line 262
    aget v14, v19, v14

    .line 264
    or-int/2addr v11, v14

    .line 265
    ushr-int/lit8 v14, v13, 0x10

    .line 267
    and-int/lit8 v14, v14, 0x3f

    .line 269
    aget v14, v20, v14

    .line 271
    or-int/2addr v11, v14

    .line 272
    ushr-int/lit8 v13, v13, 0x18

    .line 274
    and-int/lit8 v13, v13, 0x3f

    .line 276
    aget v13, v21, v13

    .line 278
    or-int/2addr v11, v13

    .line 279
    xor-int/2addr v3, v11

    .line 280
    add-int/lit8 v4, v4, 0x1

    .line 282
    move v11, v12

    .line 283
    goto/16 :goto_49
.end method

.method private deskey([BZ[I)V
    .registers 16

    .line 1
    const/16 v0, 0x38

    .line 3
    new-array v1, v0, [I

    .line 5
    new-array v2, v0, [I

    .line 7
    const/16 v3, 0x20

    .line 9
    new-array v3, v3, [I

    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v4

    .line 13
    :goto_c
    const/4 v6, 0x1

    .line 14
    if-lt v5, v0, :cond_85

    .line 16
    move v7, v4

    .line 17
    :goto_10
    const/16 p1, 0x10

    .line 19
    if-lt v7, p1, :cond_18

    .line 21
    invoke-direct {p0, v3, p3}, Ljcifs/util/DES;->cookey([I[I)V

    .line 24
    return-void

    .line 25
    :cond_18
    if-eqz p2, :cond_1d

    .line 27
    shl-int/lit8 p1, v7, 0x1

    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    rsub-int/lit8 p1, v7, 0xf

    .line 32
    shl-int/2addr p1, v6

    .line 33
    :goto_20
    move v8, p1

    .line 34
    add-int/lit8 v9, v8, 0x1

    .line 36
    aput v4, v3, v9

    .line 38
    aput v4, v3, v8

    .line 40
    move p1, v4

    .line 41
    :goto_28
    const/16 v5, 0x1c

    .line 43
    if-lt p1, v5, :cond_70

    .line 45
    :goto_2c
    if-lt v5, v0, :cond_5b

    .line 47
    move p1, v4

    .line 48
    :goto_2f
    const/16 v5, 0x18

    .line 50
    if-lt p1, v5, :cond_36

    .line 52
    add-int/lit8 v7, v7, 0x1

    .line 54
    goto :goto_10

    .line 55
    :cond_36
    sget-object v5, Ljcifs/util/DES;->pc2:[B

    .line 57
    aget-byte v10, v5, p1

    .line 59
    aget v10, v2, v10

    .line 61
    if-eqz v10, :cond_47

    .line 63
    aget v10, v3, v8

    .line 65
    sget-object v11, Ljcifs/util/DES;->bigbyte:[I

    .line 67
    aget v11, v11, p1

    .line 69
    or-int/2addr v10, v11

    .line 70
    aput v10, v3, v8

    .line 72
    :cond_47
    add-int/lit8 v10, p1, 0x18

    .line 74
    aget-byte v5, v5, v10

    .line 76
    aget v5, v2, v5

    .line 78
    if-eqz v5, :cond_58

    .line 80
    aget v5, v3, v9

    .line 82
    sget-object v10, Ljcifs/util/DES;->bigbyte:[I

    .line 84
    aget v10, v10, p1

    .line 86
    or-int/2addr v5, v10

    .line 87
    aput v5, v3, v9

    .line 89
    :cond_58
    add-int/lit8 p1, p1, 0x1

    .line 91
    goto :goto_2f

    .line 92
    :cond_5b
    sget-object p1, Ljcifs/util/DES;->totrot:[I

    .line 94
    aget p1, p1, v7

    .line 96
    add-int/2addr p1, v5

    .line 97
    if-ge p1, v0, :cond_67

    .line 99
    aget p1, v1, p1

    .line 101
    aput p1, v2, v5

    .line 103
    goto :goto_6d

    .line 104
    :cond_67
    add-int/lit8 p1, p1, -0x1c

    .line 106
    aget p1, v1, p1

    .line 108
    aput p1, v2, v5

    .line 110
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_2c

    .line 113
    :cond_70
    sget-object v10, Ljcifs/util/DES;->totrot:[I

    .line 115
    aget v10, v10, v7

    .line 117
    add-int/2addr v10, p1

    .line 118
    if-ge v10, v5, :cond_7c

    .line 120
    aget v5, v1, v10

    .line 122
    aput v5, v2, p1

    .line 124
    goto :goto_82

    .line 125
    :cond_7c
    add-int/lit8 v10, v10, -0x1c

    .line 127
    aget v5, v1, v10

    .line 129
    aput v5, v2, p1

    .line 131
    :goto_82
    add-int/lit8 p1, p1, 0x1

    .line 133
    goto :goto_28

    .line 134
    :cond_85
    sget-object v7, Ljcifs/util/DES;->pc1:[B

    .line 136
    aget-byte v7, v7, v5

    .line 138
    and-int/lit8 v8, v7, 0x7

    .line 140
    ushr-int/lit8 v7, v7, 0x3

    .line 142
    aget-byte v7, p1, v7

    .line 144
    sget-object v9, Ljcifs/util/DES;->bytebit:[B

    .line 146
    aget-byte v8, v9, v8

    .line 148
    and-int/2addr v7, v8

    .line 149
    if-eqz v7, :cond_97

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    move v6, v4

    .line 153
    :goto_98
    aput v6, v1, v5

    .line 155
    add-int/lit8 v5, v5, 0x1

    .line 157
    goto/16 :goto_c
.end method

.method private encrypt([BI[BI)V
    .registers 8

    .line 1
    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljcifs/util/DES;->squashBytesToInts([BI[III)V

    .line 2
    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object p2, p0, Ljcifs/util/DES;->encryptKeys:[I

    invoke-direct {p0, p1, p1, p2}, Ljcifs/util/DES;->des([I[I[I)V

    .line 3
    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {p1, v1, p3, p4, v2}, Ljcifs/util/DES;->spreadIntsToBytes([II[BII)V

    return-void
.end method

.method public static makeSMBKey([B[B)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p0, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    shr-int/2addr v1, v2

    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 8
    int-to-byte v1, v1

    .line 9
    aput-byte v1, p1, v0

    .line 11
    aget-byte v1, p0, v0

    .line 13
    and-int/2addr v1, v2

    .line 14
    const/4 v3, 0x6

    .line 15
    shl-int/2addr v1, v3

    .line 16
    aget-byte v4, p0, v2

    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 20
    const/4 v5, 0x2

    .line 21
    shr-int/2addr v4, v5

    .line 22
    and-int/lit16 v4, v4, 0xff

    .line 24
    or-int/2addr v1, v4

    .line 25
    and-int/lit16 v1, v1, 0xff

    .line 27
    int-to-byte v1, v1

    .line 28
    aput-byte v1, p1, v2

    .line 30
    aget-byte v1, p0, v2

    .line 32
    const/4 v4, 0x3

    .line 33
    and-int/2addr v1, v4

    .line 34
    const/4 v6, 0x5

    .line 35
    shl-int/2addr v1, v6

    .line 36
    aget-byte v7, p0, v5

    .line 38
    and-int/lit16 v7, v7, 0xff

    .line 40
    shr-int/2addr v7, v4

    .line 41
    and-int/lit16 v7, v7, 0xff

    .line 43
    or-int/2addr v1, v7

    .line 44
    and-int/lit16 v1, v1, 0xff

    .line 46
    int-to-byte v1, v1

    .line 47
    aput-byte v1, p1, v5

    .line 49
    aget-byte v1, p0, v5

    .line 51
    const/4 v7, 0x7

    .line 52
    and-int/2addr v1, v7

    .line 53
    const/4 v8, 0x4

    .line 54
    shl-int/2addr v1, v8

    .line 55
    aget-byte v9, p0, v4

    .line 57
    and-int/lit16 v9, v9, 0xff

    .line 59
    shr-int/2addr v9, v8

    .line 60
    and-int/lit16 v9, v9, 0xff

    .line 62
    or-int/2addr v1, v9

    .line 63
    and-int/lit16 v1, v1, 0xff

    .line 65
    int-to-byte v1, v1

    .line 66
    aput-byte v1, p1, v4

    .line 68
    aget-byte v1, p0, v4

    .line 70
    and-int/lit8 v1, v1, 0xf

    .line 72
    shl-int/2addr v1, v4

    .line 73
    aget-byte v4, p0, v8

    .line 75
    and-int/lit16 v4, v4, 0xff

    .line 77
    shr-int/2addr v4, v6

    .line 78
    and-int/lit16 v4, v4, 0xff

    .line 80
    or-int/2addr v1, v4

    .line 81
    and-int/lit16 v1, v1, 0xff

    .line 83
    int-to-byte v1, v1

    .line 84
    aput-byte v1, p1, v8

    .line 86
    aget-byte v1, p0, v8

    .line 88
    and-int/lit8 v1, v1, 0x1f

    .line 90
    shl-int/2addr v1, v5

    .line 91
    aget-byte v4, p0, v6

    .line 93
    and-int/lit16 v4, v4, 0xff

    .line 95
    shr-int/2addr v4, v3

    .line 96
    and-int/lit16 v4, v4, 0xff

    .line 98
    or-int/2addr v1, v4

    .line 99
    and-int/lit16 v1, v1, 0xff

    .line 101
    int-to-byte v1, v1

    .line 102
    aput-byte v1, p1, v6

    .line 104
    aget-byte v1, p0, v6

    .line 106
    and-int/lit8 v1, v1, 0x3f

    .line 108
    shl-int/2addr v1, v2

    .line 109
    aget-byte v4, p0, v3

    .line 111
    and-int/lit16 v4, v4, 0xff

    .line 113
    shr-int/2addr v4, v7

    .line 114
    and-int/lit16 v4, v4, 0xff

    .line 116
    or-int/2addr v1, v4

    .line 117
    and-int/lit16 v1, v1, 0xff

    .line 119
    int-to-byte v1, v1

    .line 120
    aput-byte v1, p1, v3

    .line 122
    aget-byte p0, p0, v3

    .line 124
    and-int/lit8 p0, p0, 0x7f

    .line 126
    int-to-byte p0, p0

    .line 127
    aput-byte p0, p1, v7

    .line 129
    :goto_80
    const/16 p0, 0x8

    .line 131
    if-lt v0, p0, :cond_85

    .line 133
    return-void

    .line 134
    :cond_85
    aget-byte p0, p1, v0

    .line 136
    shl-int/2addr p0, v2

    .line 137
    int-to-byte p0, p0

    .line 138
    aput-byte p0, p1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 142
    goto :goto_80
.end method

.method public static spreadIntsToBytes([II[BII)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-lt v0, p4, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    mul-int/lit8 v1, v0, 0x4

    .line 7
    add-int/2addr v1, p3

    .line 8
    add-int v2, p1, v0

    .line 10
    aget v2, p0, v2

    .line 12
    ushr-int/lit8 v3, v2, 0x18

    .line 14
    int-to-byte v3, v3

    .line 15
    aput-byte v3, p2, v1

    .line 17
    add-int/lit8 v3, v1, 0x1

    .line 19
    ushr-int/lit8 v4, v2, 0x10

    .line 21
    int-to-byte v4, v4

    .line 22
    aput-byte v4, p2, v3

    .line 24
    add-int/lit8 v3, v1, 0x2

    .line 26
    ushr-int/lit8 v4, v2, 0x8

    .line 28
    int-to-byte v4, v4

    .line 29
    aput-byte v4, p2, v3

    .line 31
    add-int/lit8 v1, v1, 0x3

    .line 33
    int-to-byte v2, v2

    .line 34
    aput-byte v2, p2, v1

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_1
.end method

.method public static squashBytesToInts([BI[III)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-lt v0, p4, :cond_4

    .line 4
    return-void

    .line 5
    :cond_4
    add-int v1, p3, v0

    .line 7
    mul-int/lit8 v2, v0, 0x4

    .line 9
    add-int/2addr v2, p1

    .line 10
    aget-byte v3, p0, v2

    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 14
    shl-int/lit8 v3, v3, 0x18

    .line 16
    add-int/lit8 v4, v2, 0x1

    .line 18
    aget-byte v4, p0, v4

    .line 20
    and-int/lit16 v4, v4, 0xff

    .line 22
    shl-int/lit8 v4, v4, 0x10

    .line 24
    or-int/2addr v3, v4

    .line 25
    add-int/lit8 v4, v2, 0x2

    .line 27
    aget-byte v4, p0, v4

    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 31
    shl-int/lit8 v4, v4, 0x8

    .line 33
    or-int/2addr v3, v4

    .line 34
    add-int/lit8 v2, v2, 0x3

    .line 36
    aget-byte v2, p0, v2

    .line 38
    and-int/lit16 v2, v2, 0xff

    .line 40
    or-int/2addr v2, v3

    .line 41
    aput v2, p2, v1

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_1
.end method


# virtual methods
.method public decrypt([B[B)V
    .registers 4

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2, v0}, Ljcifs/util/DES;->decrypt([BI[BI)V

    return-void
.end method

.method public decrypt([B)[B
    .registers 6

    .line 5
    array-length v0, p1

    .line 6
    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_e

    .line 7
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Array must be a multiple of 8"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_e
    new-array v1, v0, [B

    .line 9
    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_13
    if-lt v2, v0, :cond_16

    return-object v1

    :cond_16
    mul-int/lit8 v3, v2, 0x8

    .line 10
    invoke-direct {p0, p1, v3, v1, v3}, Ljcifs/util/DES;->encrypt([BI[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public encrypt([B[B)V
    .registers 4

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2, v0}, Ljcifs/util/DES;->encrypt([BI[BI)V

    return-void
.end method

.method public encrypt([B)[B
    .registers 6

    .line 5
    array-length v0, p1

    .line 6
    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_e

    .line 7
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Array must be a multiple of 8"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_e
    new-array v1, v0, [B

    .line 9
    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_13
    if-lt v2, v0, :cond_16

    return-object v1

    :cond_16
    mul-int/lit8 v3, v2, 0x8

    .line 10
    invoke-direct {p0, p1, v3, v1, v3}, Ljcifs/util/DES;->encrypt([BI[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public setKey([B)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/util/DES;->encryptKeys:[I

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, p1, v1, v0}, Ljcifs/util/DES;->deskey([BZ[I)V

    .line 7
    iget-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v1, v0}, Ljcifs/util/DES;->deskey([BZ[I)V

    .line 13
    return-void
.end method
