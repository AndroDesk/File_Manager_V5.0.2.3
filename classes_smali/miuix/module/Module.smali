.class public Lmiuix/module/Module;
.super Ljava/lang/Object;
.source "Module.java"


# static fields
.field public static final CONTENT_DEFAULT:I

.field public static final CONTENT_DEX:I

.field public static final CONTENT_LIB:I

.field public static final CONTENT_NONE:I

.field public static final CONTENT_RES:I


# instance fields
.field private content:I

.field private level:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Module;->CONTENT_DEFAULT:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Module;->CONTENT_DEX:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Module;->CONTENT_LIB:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Module;->CONTENT_NONE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/module/Module;->CONTENT_RES:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()I
    .registers 2

    iget v0, p0, Lmiuix/module/Module;->content:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Lmiuix/module/Module;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/module/Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)V
    .registers 2

    iput p1, p0, Lmiuix/module/Module;->content:I

    return-void
.end method

.method public setLevel(I)V
    .registers 2

    iput p1, p0, Lmiuix/module/Module;->level:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiuix/module/Module;->name:Ljava/lang/String;

    return-void
.end method
