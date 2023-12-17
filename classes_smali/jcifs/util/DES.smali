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

    fill-array-data v1, :array_ce8

    sput-object v1, Ljcifs/util/DES;->bytebit:[B

    const/16 v1, 0x18

    new-array v2, v1, [I

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

    sput-object v2, Ljcifs/util/DES;->pc1:[B

    new-array v2, v9, [I

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Ljcifs/util/DES;->encryptKeys:[I

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Ljcifs/util/DES;->encryptKeys:[I

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_21

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-static {p1, v0}, Ljcifs/util/DES;->makeSMBKey([B[B)V

    invoke-virtual {p0, v0}, Ljcifs/util/DES;->setKey([B)V

    goto :goto_24

    :cond_21
    invoke-virtual {p0, p1}, Ljcifs/util/DES;->setKey([B)V

    :goto_24
    return-void
.end method

.method private cookey([I[I)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/16 v3, 0x10

    if-lt v0, v3, :cond_8

    return-void

    :cond_8
    add-int/lit8 v4, v1, 0x1

    aget v1, p1, v1

    add-int/lit8 v5, v4, 0x1

    aget v4, p1, v4

    const/high16 v6, 0xfc0000

    and-int v7, v1, v6

    shl-int/lit8 v7, v7, 0x6

    aput v7, p2, v2

    and-int/lit16 v8, v1, 0xfc0

    shl-int/lit8 v8, v8, 0xa

    or-int/2addr v7, v8

    aput v7, p2, v2

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0xa

    or-int/2addr v6, v7

    aput v6, p2, v2

    and-int/lit16 v7, v4, 0xfc0

    ushr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aput v6, p2, v2

    add-int/lit8 v2, v2, 0x1

    const v6, 0x3f000

    and-int v7, v1, v6

    shl-int/lit8 v7, v7, 0xc

    aput v7, p2, v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/2addr v1, v3

    or-int/2addr v1, v7

    aput v1, p2, v2

    and-int v3, v4, v6

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    aput v1, p2, v2

    and-int/lit8 v3, v4, 0x3f

    or-int/2addr v1, v3

    aput v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_3
.end method

.method private decrypt([BI[BI)V
    .registers 8

    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljcifs/util/DES;->squashBytesToInts([BI[III)V

    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object p2, p0, Ljcifs/util/DES;->decryptKeys:[I

    invoke-direct {p0, p1, p1, p2}, Ljcifs/util/DES;->des([I[I[I)V

    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {p1, v1, p3, p4, v2}, Ljcifs/util/DES;->spreadIntsToBytes([II[BII)V

    return-void
.end method

.method private des([I[I[I)V
    .registers 26

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    ushr-int/lit8 v4, v1, 0x4

    xor-int/2addr v4, v3

    const v5, 0xf0f0f0f

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x4

    xor-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x10

    xor-int/2addr v4, v3

    const v6, 0xffff

    and-int/2addr v4, v6

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v1, v4

    ushr-int/lit8 v4, v3, 0x2

    xor-int/2addr v4, v1

    const v7, 0x33333333

    and-int/2addr v4, v7

    xor-int/2addr v1, v4

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v1

    const v8, 0xff00ff

    and-int/2addr v4, v8

    xor-int/2addr v1, v4

    const/16 v9, 0x8

    shl-int/2addr v4, v9

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    and-int/2addr v3, v2

    or-int/2addr v3, v4

    xor-int v4, v1, v3

    const v10, -0x55555556

    and-int/2addr v4, v10

    xor-int/2addr v1, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    and-int/2addr v1, v2

    or-int/2addr v1, v4

    move v4, v0

    move v11, v4

    :goto_49
    if-lt v4, v9, :cond_7c

    shl-int/lit8 v4, v3, 0x1f

    ushr-int/2addr v3, v2

    or-int/2addr v3, v4

    xor-int v4, v1, v3

    and-int/2addr v4, v10

    xor-int/2addr v1, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x1f

    ushr-int/2addr v1, v2

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x8

    xor-int/2addr v4, v3

    and-int/2addr v4, v8

    xor-int/2addr v3, v4

    shl-int/2addr v4, v9

    xor-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x2

    xor-int/2addr v4, v3

    and-int/2addr v4, v7

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v1, v4

    ushr-int/lit8 v4, v3, 0x10

    xor-int/2addr v4, v1

    and-int/2addr v4, v6

    xor-int/2addr v1, v4

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x4

    xor-int/2addr v4, v1

    and-int/2addr v4, v5

    xor-int/2addr v1, v4

    shl-int/lit8 v4, v4, 0x4

    xor-int/2addr v3, v4

    aput v3, p2, v0

    aput v1, p2, v2

    return-void

    :cond_7c
    shl-int/lit8 v12, v3, 0x1c

    ushr-int/lit8 v13, v3, 0x4

    or-int/2addr v12, v13

    add-int/lit8 v13, v11, 0x1

    aget v11, p3, v11

    xor-int/2addr v11, v12

    sget-object v12, Ljcifs/util/DES;->SP7:[I

    and-int/lit8 v14, v11, 0x3f

    aget v14, v12, v14

    sget-object v15, Ljcifs/util/DES;->SP5:[I

    ushr-int/lit8 v16, v11, 0x8

    and-int/lit8 v16, v16, 0x3f

    aget v16, v15, v16

    or-int v14, v14, v16

    sget-object v16, Ljcifs/util/DES;->SP3:[I

    ushr-int/lit8 v17, v11, 0x10

    and-int/lit8 v17, v17, 0x3f

    aget v17, v16, v17

    or-int v14, v14, v17

    sget-object v17, Ljcifs/util/DES;->SP1:[I

    ushr-int/lit8 v11, v11, 0x18

    and-int/lit8 v11, v11, 0x3f

    aget v11, v17, v11

    or-int/2addr v11, v14

    add-int/lit8 v14, v13, 0x1

    aget v13, p3, v13

    xor-int/2addr v13, v3

    sget-object v18, Ljcifs/util/DES;->SP8:[I

    and-int/lit8 v19, v13, 0x3f

    aget v19, v18, v19

    or-int v11, v11, v19

    sget-object v19, Ljcifs/util/DES;->SP6:[I

    ushr-int/lit8 v20, v13, 0x8

    and-int/lit8 v20, v20, 0x3f

    aget v20, v19, v20

    or-int v11, v11, v20

    sget-object v20, Ljcifs/util/DES;->SP4:[I

    ushr-int/lit8 v21, v13, 0x10

    and-int/lit8 v21, v21, 0x3f

    aget v21, v20, v21

    or-int v11, v11, v21

    sget-object v21, Ljcifs/util/DES;->SP2:[I

    ushr-int/lit8 v13, v13, 0x18

    and-int/lit8 v13, v13, 0x3f

    aget v13, v21, v13

    or-int/2addr v11, v13

    xor-int/2addr v1, v11

    shl-int/lit8 v11, v1, 0x1c

    ushr-int/lit8 v13, v1, 0x4

    or-int/2addr v11, v13

    add-int/lit8 v13, v14, 0x1

    aget v14, p3, v14

    xor-int/2addr v11, v14

    and-int/lit8 v14, v11, 0x3f

    aget v12, v12, v14

    ushr-int/lit8 v14, v11, 0x8

    and-int/lit8 v14, v14, 0x3f

    aget v14, v15, v14

    or-int/2addr v12, v14

    ushr-int/lit8 v14, v11, 0x10

    and-int/lit8 v14, v14, 0x3f

    aget v14, v16, v14

    or-int/2addr v12, v14

    ushr-int/lit8 v11, v11, 0x18

    and-int/lit8 v11, v11, 0x3f

    aget v11, v17, v11

    or-int/2addr v11, v12

    add-int/lit8 v12, v13, 0x1

    aget v13, p3, v13

    xor-int/2addr v13, v1

    and-int/lit8 v14, v13, 0x3f

    aget v14, v18, v14

    or-int/2addr v11, v14

    ushr-int/lit8 v14, v13, 0x8

    and-int/lit8 v14, v14, 0x3f

    aget v14, v19, v14

    or-int/2addr v11, v14

    ushr-int/lit8 v14, v13, 0x10

    and-int/lit8 v14, v14, 0x3f

    aget v14, v20, v14

    or-int/2addr v11, v14

    ushr-int/lit8 v13, v13, 0x18

    and-int/lit8 v13, v13, 0x3f

    aget v13, v21, v13

    or-int/2addr v11, v13

    xor-int/2addr v3, v11

    add-int/lit8 v4, v4, 0x1

    move v11, v12

    goto/16 :goto_49
.end method

.method private deskey([BZ[I)V
    .registers 16

    const/16 v0, 0x38

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/16 v3, 0x20

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_c
    const/4 v6, 0x1

    if-lt v5, v0, :cond_85

    move v7, v4

    :goto_10
    const/16 p1, 0x10

    if-lt v7, p1, :cond_18

    invoke-direct {p0, v3, p3}, Ljcifs/util/DES;->cookey([I[I)V

    return-void

    :cond_18
    if-eqz p2, :cond_1d

    shl-int/lit8 p1, v7, 0x1

    goto :goto_20

    :cond_1d
    rsub-int/lit8 p1, v7, 0xf

    shl-int/2addr p1, v6

    :goto_20
    move v8, p1

    add-int/lit8 v9, v8, 0x1

    aput v4, v3, v9

    aput v4, v3, v8

    move p1, v4

    :goto_28
    const/16 v5, 0x1c

    if-lt p1, v5, :cond_70

    :goto_2c
    if-lt v5, v0, :cond_5b

    move p1, v4

    :goto_2f
    const/16 v5, 0x18

    if-lt p1, v5, :cond_36

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_36
    sget-object v5, Ljcifs/util/DES;->pc2:[B

    aget-byte v10, v5, p1

    aget v10, v2, v10

    if-eqz v10, :cond_47

    aget v10, v3, v8

    sget-object v11, Ljcifs/util/DES;->bigbyte:[I

    aget v11, v11, p1

    or-int/2addr v10, v11

    aput v10, v3, v8

    :cond_47
    add-int/lit8 v10, p1, 0x18

    aget-byte v5, v5, v10

    aget v5, v2, v5

    if-eqz v5, :cond_58

    aget v5, v3, v9

    sget-object v10, Ljcifs/util/DES;->bigbyte:[I

    aget v10, v10, p1

    or-int/2addr v5, v10

    aput v5, v3, v9

    :cond_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_5b
    sget-object p1, Ljcifs/util/DES;->totrot:[I

    aget p1, p1, v7

    add-int/2addr p1, v5

    if-ge p1, v0, :cond_67

    aget p1, v1, p1

    aput p1, v2, v5

    goto :goto_6d

    :cond_67
    add-int/lit8 p1, p1, -0x1c

    aget p1, v1, p1

    aput p1, v2, v5

    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_70
    sget-object v10, Ljcifs/util/DES;->totrot:[I

    aget v10, v10, v7

    add-int/2addr v10, p1

    if-ge v10, v5, :cond_7c

    aget v5, v1, v10

    aput v5, v2, p1

    goto :goto_82

    :cond_7c
    add-int/lit8 v10, v10, -0x1c

    aget v5, v1, v10

    aput v5, v2, p1

    :goto_82
    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_85
    sget-object v7, Ljcifs/util/DES;->pc1:[B

    aget-byte v7, v7, v5

    and-int/lit8 v8, v7, 0x7

    ushr-int/lit8 v7, v7, 0x3

    aget-byte v7, p1, v7

    sget-object v9, Ljcifs/util/DES;->bytebit:[B

    aget-byte v8, v9, v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_97

    goto :goto_98

    :cond_97
    move v6, v4

    :goto_98
    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c
.end method

.method private encrypt([BI[BI)V
    .registers 8

    iget-object v0, p0, Ljcifs/util/DES;->tempInts:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Ljcifs/util/DES;->squashBytesToInts([BI[III)V

    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    iget-object p2, p0, Ljcifs/util/DES;->encryptKeys:[I

    invoke-direct {p0, p1, p1, p2}, Ljcifs/util/DES;->des([I[I[I)V

    iget-object p1, p0, Ljcifs/util/DES;->tempInts:[I

    invoke-static {p1, v1, p3, p4, v2}, Ljcifs/util/DES;->spreadIntsToBytes([II[BII)V

    return-void
.end method

.method public static makeSMBKey([B[B)V
    .registers 12

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    aget-byte v1, p0, v0

    and-int/2addr v1, v2

    const/4 v3, 0x6

    shl-int/2addr v1, v3

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    aget-byte v1, p0, v2

    const/4 v4, 0x3

    and-int/2addr v1, v4

    const/4 v6, 0x5

    shl-int/2addr v1, v6

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v4

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v5

    aget-byte v1, p0, v5

    const/4 v7, 0x7

    and-int/2addr v1, v7

    const/4 v8, 0x4

    shl-int/2addr v1, v8

    aget-byte v9, p0, v4

    and-int/lit16 v9, v9, 0xff

    shr-int/2addr v9, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0xf

    shl-int/2addr v1, v4

    aget-byte v4, p0, v8

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v8

    aget-byte v1, p0, v8

    and-int/lit8 v1, v1, 0x1f

    shl-int/2addr v1, v5

    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v6

    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3f

    shl-int/2addr v1, v2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    aget-byte p0, p0, v3

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    aput-byte p0, p1, v7

    :goto_80
    const/16 p0, 0x8

    if-lt v0, p0, :cond_85

    return-void

    :cond_85
    aget-byte p0, p1, v0

    shl-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_80
.end method

.method public static spreadIntsToBytes([II[BII)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p4, :cond_4

    return-void

    :cond_4
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, p1, v0

    aget v2, p0, v2

    ushr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v1, v1, 0x3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static squashBytesToInts([BI[III)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p4, :cond_4

    return-void

    :cond_4
    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decrypt([B[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Ljcifs/util/DES;->decrypt([BI[BI)V

    return-void
.end method

.method public decrypt([B)[B
    .registers 6

    array-length v0, p1

    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_e

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Array must be a multiple of 8"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_e
    new-array v1, v0, [B

    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_13
    if-lt v2, v0, :cond_16

    return-object v1

    :cond_16
    mul-int/lit8 v3, v2, 0x8

    invoke-direct {p0, p1, v3, v1, v3}, Ljcifs/util/DES;->encrypt([BI[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public encrypt([B[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Ljcifs/util/DES;->encrypt([BI[BI)V

    return-void
.end method

.method public encrypt([B)[B
    .registers 6

    array-length v0, p1

    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_e

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Array must be a multiple of 8"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_e
    new-array v1, v0, [B

    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_13
    if-lt v2, v0, :cond_16

    return-object v1

    :cond_16
    mul-int/lit8 v3, v2, 0x8

    invoke-direct {p0, p1, v3, v1, v3}, Ljcifs/util/DES;->encrypt([BI[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public setKey([B)V
    .registers 4

    iget-object v0, p0, Ljcifs/util/DES;->encryptKeys:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Ljcifs/util/DES;->deskey([BZ[I)V

    iget-object v0, p0, Ljcifs/util/DES;->decryptKeys:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljcifs/util/DES;->deskey([BZ[I)V

    return-void
.end method
