.class final Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;
.super Lcom/google/android/gms/internal/common/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzb"
.end annotation


# instance fields
.field private final synthetic zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/common/zze;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method

.method private static zza(Landroid/os/Message;)V
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzn()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->unregister()V

    .line 11
    return-void
.end method

.method private static zzb(Landroid/os/Message;)Z
    .registers 3

    .line 1
    iget p0, p0, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_e

    .line 7
    if-eq p0, v0, :cond_e

    .line 9
    const/4 v1, 0x7

    .line 10
    if-ne p0, v1, :cond_c

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_e
    :goto_e
    return v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 8
    move-result v0

    .line 9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 11
    if-eq v0, v1, :cond_16

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzb(Landroid/os/Message;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Landroid/os/Message;)V

    .line 22
    :cond_15
    return-void

    .line 23
    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    .line 25
    const/4 v1, 0x4

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x5

    .line 28
    if-eq v0, v2, :cond_2e

    .line 30
    const/4 v4, 0x7

    .line 31
    if-eq v0, v4, :cond_2e

    .line 33
    if-ne v0, v1, :cond_2a

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->enableLocalFallback()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2e

    .line 43
    :cond_2a
    iget v0, p1, Landroid/os/Message;->what:I

    .line 45
    if-ne v0, v3, :cond_3a

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3a

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Landroid/os/Message;)V

    .line 58
    return-void

    .line 59
    :cond_3a
    iget v0, p1, Landroid/os/Message;->what:I

    .line 61
    const/16 v4, 0x8

    .line 63
    const/4 v5, 0x3

    .line 64
    const/4 v6, 0x0

    .line 65
    if-ne v0, v1, :cond_85

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 69
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 71
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 73
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 76
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    .line 79
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_64

    .line 87
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_64

    .line 95
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 97
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 100
    return-void

    .line 101
    :cond_64
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 103
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_73

    .line 109
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 114
    move-result-object p1

    .line 115
    goto :goto_78

    .line 116
    :cond_73
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 118
    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 121
    :goto_78
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 123
    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 125
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 130
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 133
    return-void

    .line 134
    :cond_85
    if-ne v0, v3, :cond_a8

    .line 136
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_96

    .line 144
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    .line 149
    move-result-object p1

    .line 150
    goto :goto_9b

    .line 151
    :cond_96
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 153
    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 156
    :goto_9b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 158
    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 160
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 165
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 168
    return-void

    .line 169
    :cond_a8
    if-ne v0, v5, :cond_c7

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    instance-of v1, v0, Landroid/app/PendingIntent;

    .line 175
    if-eqz v1, :cond_b3

    .line 177
    move-object v6, v0

    .line 178
    check-cast v6, Landroid/app/PendingIntent;

    .line 180
    :cond_b3
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 182
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 184
    invoke-direct {v0, p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 187
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 189
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzcf:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 191
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 194
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 196
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 199
    return-void

    .line 200
    :cond_c7
    const/4 v1, 0x6

    .line 201
    if-ne v0, v1, :cond_ef

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 205
    invoke-static {v0, v3, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 210
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_e2

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 218
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 221
    move-result-object v0

    .line 222
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 224
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnectionSuspended(I)V

    .line 227
    :cond_e2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 229
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 231
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    .line 234
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 236
    invoke-static {p1, v3, v2, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    .line 239
    return-void

    .line 240
    :cond_ef
    const/4 v1, 0x2

    .line 241
    if-ne v0, v1, :cond_fe

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 245
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_fe

    .line 251
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Landroid/os/Message;)V

    .line 254
    return-void

    .line 255
    :cond_fe
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzb(Landroid/os/Message;)Z

    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_10c

    .line 261
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;

    .line 265
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzo()V

    .line 268
    return-void

    .line 269
    :cond_10c
    iget p1, p1, Landroid/os/Message;->what:I

    .line 271
    const/16 v0, 0x2d

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 278
    const-string v0, "Don\'t know how to handle message: "

    .line 280
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object p1

    .line 290
    new-instance v0, Ljava/lang/Exception;

    .line 292
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 295
    const-string v1, "GmsClient"

    .line 297
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    return-void
.end method
