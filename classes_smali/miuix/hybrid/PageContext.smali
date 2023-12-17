.class public Lmiuix/hybrid/PageContext;
.super Ljava/lang/Object;
.source "PageContext.java"


# instance fields
.field private id:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_27

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 18
    goto :goto_27

    .line 19
    :cond_12
    check-cast p1, Lmiuix/hybrid/PageContext;

    .line 21
    iget-object v2, p0, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    .line 23
    iget-object p1, p1, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    .line 25
    if-ne v2, p1, :cond_1b

    .line 27
    return v0

    .line 28
    :cond_1b
    if-eqz v2, :cond_27

    .line 30
    if-eqz p1, :cond_27

    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    return v0

    .line 40
    :cond_27
    :goto_27
    return v1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/PageContext;->url:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    const/16 v1, 0x1f

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/PageContext;->id:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/PageContext;->url:Ljava/lang/String;

    .line 3
    return-void
.end method
