.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;
.super Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;
.source "AbstractDaoTestStringPk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/greenrobot/greendao/AbstractDao<",
        "TT;",
        "Ljava/lang/String;",
        ">;T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<",
        "TD;TT;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createRandomPk()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;->createRandomPk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createRandomPk()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->random:Ljava/util/Random;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_23

    iget-object v3, p0, Lorg/greenrobot/greendao/test/DbTest;->random:Ljava/util/Random;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
