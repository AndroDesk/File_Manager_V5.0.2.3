.class final Lmiui/telephony/CloudTelephonyManager$TypedSimId;
.super Ljava/lang/Object;
.source "CloudTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/CloudTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypedSimId"
.end annotation


# static fields
.field private static final SP:Ljava/lang/String; = ","

.field public static final TYPE_ICCID:I = 0x1

.field public static final TYPE_IMSI:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    .line 6
    iput-object p2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 5

    .line 1
    const-string v0, ","

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v1, v3, :cond_22

    .line 12
    aget-object v1, v0, v2

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_22

    .line 20
    new-instance p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 22
    aget-object v1, v0, v2

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    aget-object v0, v0, v2

    .line 31
    invoke-direct {p0, v1, v0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 34
    return-object p0

    .line 35
    :cond_22
    new-instance v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 37
    invoke-direct {v0, v2, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 40
    return-object v0
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
    if-eqz p1, :cond_2a

    .line 8
    const-class v2, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    goto :goto_2a

    .line 17
    :cond_10
    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    .line 19
    iget v2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    .line 21
    iget v3, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    .line 23
    if-eq v2, v3, :cond_19

    .line 25
    return v1

    .line 26
    :cond_19
    iget-object v2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    .line 28
    iget-object p1, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    .line 30
    if-eqz v2, :cond_26

    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_29

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    if-eqz p1, :cond_29

    .line 41
    :goto_28
    return v1

    .line 42
    :cond_29
    return v0

    .line 43
    :cond_2a
    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    .line 7
    if-eqz v1, :cond_d

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    :goto_e
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public toPlain()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ","

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
