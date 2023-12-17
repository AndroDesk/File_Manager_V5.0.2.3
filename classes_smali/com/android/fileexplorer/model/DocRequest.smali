.class public Lcom/android/fileexplorer/model/DocRequest;
.super Lx1/b;
.source "DocRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lx1/b;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    iget-object v0, p0, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_24

    .line 13
    if-eqz p1, :cond_24

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object v1

    .line 23
    if-eq v0, v1, :cond_19

    .line 25
    goto :goto_24

    .line 26
    :cond_19
    check-cast p1, Lcom/android/fileexplorer/model/DocRequest;

    .line 28
    iget-object v0, p0, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 30
    iget-object p1, p1, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    :goto_24
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    iget-object v0, p0, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v0

    .line 20
    return v0
.end method
