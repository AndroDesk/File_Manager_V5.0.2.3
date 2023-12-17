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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/Profile;-><init>()V

    return-void
.end method

.method public constructor <init>(JLcom/xiaomi/opensdk/pdc/UserProfile$Gender;)V
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/Profile;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/xiaomi/opensdk/pdc/UserProfile;

    iget-wide v2, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    iget-wide v4, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public getGenderEnum(I)Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->MALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-object p1

    :cond_6
    if-nez p1, :cond_b

    sget-object p1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->FEMALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGenderInt(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)I
    .registers 3

    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->MALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/UserProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_12

    const-string v3, "birthday"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_12
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    if-eqz v1, :cond_1f

    invoke-virtual {p0, v1}, Lcom/xiaomi/opensdk/pdc/UserProfile;->getGenderInt(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)I

    move-result v1

    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "Profile [birthday="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
