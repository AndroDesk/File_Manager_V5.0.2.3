.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ConnectionResultCreator"
.end annotation


# static fields
.field public static final API_UNAVAILABLE:I = 0x10

.field public static final CANCELED:I = 0xd

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final RESTRICTED_PROFILE:I = 0x14

.field public static final RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_MISSING_PERMISSION:I = 0x13

.field public static final SERVICE_UPDATING:I = 0x12

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_FAILED:I = 0x11

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xe

.field public static final UNKNOWN:I = -0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# instance fields
.field private final zzg:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zzh:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getErrorCode"
        id = 0x2
    .end annotation
.end field

.field private final zzi:Landroid/app/PendingIntent;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getResolution"
        id = 0x3
    .end annotation
.end field

.field private final zzj:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getErrorMessage"
        id = 0x4
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 7
    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    .line 9
    new-instance v0, Lcom/google/android/gms/common/zza;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/common/zza;-><init>()V

    .line 14
    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2  # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3  # Landroid/app/PendingIntent;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzg:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .registers 4

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(I)Ljava/lang/String;
    .registers 3

    .line 1
    const/16 v0, 0x63

    .line 3
    if-eq p0, v0, :cond_6c

    .line 5
    const/16 v0, 0x5dc

    .line 7
    if-eq p0, v0, :cond_69

    .line 9
    packed-switch p0, :pswitch_data_70

    .line 12
    packed-switch p0, :pswitch_data_8e

    .line 15
    const/16 v0, 0x1f

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    const-string v0, "UNKNOWN_ERROR_CODE("

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string p0, ")"

    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_27  #0x15
    const-string p0, "API_VERSION_UPDATE_REQUIRED"

    .line 42
    return-object p0

    .line 43
    :pswitch_2a  #0x14
    const-string p0, "RESTRICTED_PROFILE"

    .line 45
    return-object p0

    .line 46
    :pswitch_2d  #0x13
    const-string p0, "SERVICE_MISSING_PERMISSION"

    .line 48
    return-object p0

    .line 49
    :pswitch_30  #0x12
    const-string p0, "SERVICE_UPDATING"

    .line 51
    return-object p0

    .line 52
    :pswitch_33  #0x11
    const-string p0, "SIGN_IN_FAILED"

    .line 54
    return-object p0

    .line 55
    :pswitch_36  #0x10
    const-string p0, "API_UNAVAILABLE"

    .line 57
    return-object p0

    .line 58
    :pswitch_39  #0xf
    const-string p0, "INTERRUPTED"

    .line 60
    return-object p0

    .line 61
    :pswitch_3c  #0xe
    const-string p0, "TIMEOUT"

    .line 63
    return-object p0

    .line 64
    :pswitch_3f  #0xd
    const-string p0, "CANCELED"

    .line 66
    return-object p0

    .line 67
    :pswitch_42  #0xb
    const-string p0, "LICENSE_CHECK_FAILED"

    .line 69
    return-object p0

    .line 70
    :pswitch_45  #0xa
    const-string p0, "DEVELOPER_ERROR"

    .line 72
    return-object p0

    .line 73
    :pswitch_48  #0x9
    const-string p0, "SERVICE_INVALID"

    .line 75
    return-object p0

    .line 76
    :pswitch_4b  #0x8
    const-string p0, "INTERNAL_ERROR"

    .line 78
    return-object p0

    .line 79
    :pswitch_4e  #0x7
    const-string p0, "NETWORK_ERROR"

    .line 81
    return-object p0

    .line 82
    :pswitch_51  #0x6
    const-string p0, "RESOLUTION_REQUIRED"

    .line 84
    return-object p0

    .line 85
    :pswitch_54  #0x5
    const-string p0, "INVALID_ACCOUNT"

    .line 87
    return-object p0

    .line 88
    :pswitch_57  #0x4
    const-string p0, "SIGN_IN_REQUIRED"

    .line 90
    return-object p0

    .line 91
    :pswitch_5a  #0x3
    const-string p0, "SERVICE_DISABLED"

    .line 93
    return-object p0

    .line 94
    :pswitch_5d  #0x2
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    .line 96
    return-object p0

    .line 97
    :pswitch_60  #0x1
    const-string p0, "SERVICE_MISSING"

    .line 99
    return-object p0

    .line 100
    :pswitch_63  #0x0
    const-string p0, "SUCCESS"

    .line 102
    return-object p0

    .line 103
    :pswitch_66  #0xffffffff
    const-string p0, "UNKNOWN"

    .line 105
    return-object p0

    .line 106
    :cond_69
    const-string p0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    .line 108
    return-object p0

    .line 109
    :cond_6c
    const-string p0, "UNFINISHED"

    .line 111
    return-object p0

    .line 112
    nop

    .line 113
    :pswitch_data_70
    .packed-switch -0x1
        :pswitch_66  #ffffffff
        :pswitch_63  #00000000
        :pswitch_60  #00000001
        :pswitch_5d  #00000002
        :pswitch_5a  #00000003
        :pswitch_57  #00000004
        :pswitch_54  #00000005
        :pswitch_51  #00000006
        :pswitch_4e  #00000007
        :pswitch_4b  #00000008
        :pswitch_48  #00000009
        :pswitch_45  #0000000a
        :pswitch_42  #0000000b
    .end packed-switch

    .line 143
    :pswitch_data_8e
    .packed-switch 0xd
        :pswitch_3f  #0000000d
        :pswitch_3c  #0000000e
        :pswitch_39  #0000000f
        :pswitch_36  #00000010
        :pswitch_33  #00000011
        :pswitch_30  #00000012
        :pswitch_2d  #00000013
        :pswitch_2a  #00000014
        :pswitch_27  #00000015
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 13
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 15
    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 17
    if-ne v1, v3, :cond_27

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 21
    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 23
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_27

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    .line 31
    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    .line 33
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_27

    .line 39
    return v0

    .line 40
    :cond_27
    return v2
.end method

.method public final getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 3
    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final getResolution()Landroid/app/PendingIntent;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 3
    return-object v0
.end method

.method public final hasResolution()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    .line 20
    const/4 v2, 0x2

    .line 21
    aput-object v1, v0, v2

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final isSuccess()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final startResolutionForResult(Landroid/app/Activity;I)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 10
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 13
    move-result-object v2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v1, p1

    .line 19
    move v3, p2

    .line 20
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 23
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "statusCode"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 19
    const-string v2, "resolution"

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    .line 27
    const-string v2, "message"

    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzg:I

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x3

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 39
    return-void
.end method
