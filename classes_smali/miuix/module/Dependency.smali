.class public Lmiuix/module/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/module/Dependency$Level;
    }
.end annotation


# static fields
.field public static final TYPE_DEFAULT:I

.field public static final TYPE_INSTALLED:I

.field public static final TYPE_NONE:I

.field public static final TYPE_OPTIONAL:I


# instance fields
.field private level:Lmiuix/module/Dependency$Level;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Dependency;->TYPE_DEFAULT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Dependency;->TYPE_INSTALLED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Dependency;->TYPE_NONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Dependency;->TYPE_OPTIONAL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Lmiuix/module/Dependency$Level;
    .registers 2

    iget-object v0, p0, Lmiuix/module/Dependency;->level:Lmiuix/module/Dependency$Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/module/Dependency;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lmiuix/module/Dependency;->type:I

    return v0
.end method

.method public setLevel(Lmiuix/module/Dependency$Level;)V
    .registers 2

    iput-object p1, p0, Lmiuix/module/Dependency;->level:Lmiuix/module/Dependency$Level;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiuix/module/Dependency;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lmiuix/module/Dependency;->type:I

    return-void
.end method
