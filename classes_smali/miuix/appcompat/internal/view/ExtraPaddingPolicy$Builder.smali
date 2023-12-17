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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-direct {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    return-void
.end method


# virtual methods
.method public create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    return-object v0
.end method

.method public createDefault(I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
    .registers 7

    const/16 v0, 0x29e

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p1, v4, :cond_30

    new-array p1, v4, [I

    fill-array-data p1, :array_4a

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p1

    new-array v3, v3, [I

    fill-array-data v3, :array_52

    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p1

    new-array v2, v2, [I

    aput v0, v2, v1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHoldsInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p1

    new-array v0, v4, [I

    fill-array-data v0, :array_5c

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDpInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    move-result-object p1

    return-object p1

    :cond_30
    if-ne p1, v3, :cond_48

    new-array p1, v2, [I

    aput v0, p1, v1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p1

    new-array v0, v4, [I

    fill-array-data v0, :array_64

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->create()Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    move-result-object p1

    return-object p1

    :cond_48
    const/4 p1, 0x0

    return-object p1

    :array_4a
    .array-data 4
        0x29e
        0x3c0
    .end array-data

    :array_52
    .array-data 4
        0x0
        0x24
        0x64
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x2c
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x1c
    .end array-data
.end method

.method public varargs setPaddingsDp([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$102(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method

.method public varargs setPaddingsDpInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$302(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method

.method public varargs setThreshHolds([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$002(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method

.method public varargs setThreshHoldsInMultiColumns([I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    .registers 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->mPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->access$202(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I

    return-object p0
.end method
