.class public Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
.super Ljava/lang/Object;
.source "ExtraPaddingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 6
    invoke-direct {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 11
    return-void
.end method


# virtual methods
.method public create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    return-object v0
.end method

.method public createDefault(I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
    .registers 7

    .line 1
    const/16 v0, 0x29e

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    if-ne p1, v4, :cond_30

    .line 9
    new-array p1, v4, [I

    .line 11
    fill-array-data p1, :array_4a

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    .line 17
    move-result-object p1

    .line 18
    new-array v3, v3, [I

    .line 20
    fill-array-data v3, :array_52

    .line 23
    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    .line 26
    move-result-object p1

    .line 27
    new-array v2, v2, [I

    .line 29
    aput v0, v2, v1

    .line 31
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHoldsInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    .line 34
    move-result-object p1

    .line 35
    new-array v0, v4, [I

    .line 37
    fill-array-data v0, :array_5c

    .line 40
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDpInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_30
    if-ne p1, v3, :cond_48

    .line 51
    new-array p1, v2, [I

    .line 53
    aput v0, p1, v1

    .line 55
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    .line 58
    move-result-object p1

    .line 59
    new-array v0, v4, [I

    .line 61
    fill-array-data v0, :array_64

    .line 64
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_48
    const/4 p1, 0x0

    .line 74
    return-object p1

    .line 75
    :array_4a
    .array-data 4
        0x29e
        0x3c0
    .end array-data

    .line 83
    :array_52
    .array-data 4
        0x0
        0x24
        0x64
    .end array-data

    .line 93
    :array_5c
    .array-data 4
        0x0
        0x2c
    .end array-data

    .line 101
    :array_64
    .array-data 4
        0x0
        0x1c
    .end array-data
.end method

.method public varargs setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$102(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    .line 6
    return-object p0
.end method

.method public varargs setPaddingsDpInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$302(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    .line 6
    return-object p0
.end method

.method public varargs setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$002(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    .line 6
    return-object p0
.end method

.method public varargs setThreshHoldsInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$202(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    .line 6
    return-object p0
.end method
