.class public Lcom/xiaomi/opensdk/pdc/UserProfile;
.super Lcom/xiaomi/opensdk/pdc/Profile;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    }
.end annotation


# static fields
.field public static final KEY_BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"


# instance fields
.field public birthday:J

.field public gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/Profile;-><init>()V

    return-void
.end method

.method public constructor <init>(JLcom/xiaomi/opensdk/pdc/UserProfile$Gender;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/Profile;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    .line 4
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1a

    .line 6
    check-cast p1, Lcom/xiaomi/opensdk/pdc/UserProfile;

    .line 8
    iget-wide v2, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    .line 10
    iget-wide v4, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    .line 12
    cmp-long v0, v2, v4

    .line 14
    if-nez v0, :cond_1a

    .line 16
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 18
    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1a

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1a
    return v1
.end method

.method public getGenderEnum(I)Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_6

    .line 4
    sget-object p1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->MALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 6
    return-object p1

    .line 7
    :cond_6
    if-nez p1, :cond_b

    .line 9
    sget-object p1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->FEMALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 11
    return-object p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public getGenderInt(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)I
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->MALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 3
    if-ne p1, v0, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/UserProfile;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    .line 8
    const-wide/16 v3, 0x0

    .line 10
    cmp-long v3, v1, v3

    .line 12
    if-lez v3, :cond_12

    .line 14
    const-string v3, "birthday"

    .line 16
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    :cond_12
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 21
    if-eqz v1, :cond_1f

    .line 23
    invoke-virtual {p0, v1}, Lcom/xiaomi/opensdk/pdc/UserProfile;->getGenderInt(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)I

    .line 26
    move-result v1

    .line 27
    const-string v2, "gender"

    .line 29
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    :cond_1f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "Profile [birthday="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", gender="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "]"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
