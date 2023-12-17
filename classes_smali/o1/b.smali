.class public final Lo1/b;
.super Ljava/lang/Object;
.source "ByteArrayValuePair.java"

# interfaces
.implements Lorg/apache/http/NameValuePair;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x1

    .line 6
    if-ne p0, p1, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p1, Lo1/b;

    .line 11
    if-eqz v2, :cond_22

    .line 13
    check-cast p1, Lo1/b;

    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_22

    .line 22
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_22

    .line 28
    invoke-static {p1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_22

    .line 34
    move v0, v1

    .line 35
    :cond_22
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    const/16 v0, 0x11

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    .line 7
    move-result v0

    .line 8
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    .line 11
    move-result v0

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
