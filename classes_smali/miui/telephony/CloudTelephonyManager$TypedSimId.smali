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

.field public static final TYPE_ICCID:I

.field public static final TYPE_IMSI:I

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public final type:I

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->TYPE_ICCID:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->TYPE_IMSI:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    iput-object p2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
    .registers 5

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_22
    new-instance v0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    invoke-direct {v0, v2, p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    const-class v2, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2a

    :cond_10
    check-cast p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    iget v2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    iget v3, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget-object v2, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    iget-object p1, p1, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    if-eqz v2, :cond_26

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_28

    :cond_26
    if-eqz p1, :cond_29

    :goto_28
    return v1

    :cond_29
    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    return v0
.end method

.method public toPlain()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lmiui/telephony/CloudTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
