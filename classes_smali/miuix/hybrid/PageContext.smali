.class public Lmiuix/hybrid/PageContext;
.super Ljava/lang/Object;
.source "PageContext.java"


# instance fields
.field private id:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    :cond_12
    check-cast p1, Lmiuix/hybrid/PageContext;

    iget-object v2, p0, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    iget-object p1, p1, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    if-ne v2, p1, :cond_1b

    return v0

    :cond_1b
    if-eqz v2, :cond_27

    if-eqz p1, :cond_27

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_27

    :cond_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/hybrid/PageContext;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiuix/hybrid/PageContext;->url:Ljava/lang/String;

    return-void
.end method
