.class public Lmiuix/module/Module;
.super Ljava/lang/Object;
.source "Module.java"


# static fields
.field public static final CONTENT_DEFAULT:I = 0x0

.field public static final CONTENT_DEX:I = 0x1

.field public static final CONTENT_LIB:I = 0x2

.field public static final CONTENT_NONE:I = 0x0

.field public static final CONTENT_RES:I = 0x4


# instance fields
.field private content:I

.field private level:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/module/Module;->content:I

    .line 3
    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/module/Module;->level:I

    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/module/Module;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setContent(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/module/Module;->content:I

    .line 3
    return-void
.end method

.method public setLevel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/module/Module;->level:I

    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/module/Module;->name:Ljava/lang/String;

    .line 3
    return-void
.end method
