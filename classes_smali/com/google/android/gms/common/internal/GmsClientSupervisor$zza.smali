.class public final Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final zzdr:Ljava/lang/String;

.field private final zzds:Ljava/lang/String;

.field private final zzdt:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    const/16 p1, 0x81

    .line 15
    iput p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    const-string p1, "com.google.android.gms"

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    const/16 p1, 0x81

    .line 5
    iput p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    .line 10
    iput p3, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 15
    iget-object v3, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 17
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_31

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 27
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_31

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    .line 35
    iget-object v3, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    .line 37
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_31

    .line 43
    iget v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    .line 45
    iget p1, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    .line 47
    if-ne v1, p1, :cond_31

    .line 49
    return v0

    .line 50
    :cond_31
    return v2
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    .line 3
    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 19
    iget v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x3

    .line 26
    aput-object v1, v0, v2

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    .line 7
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    return-object v0
.end method

.method public final zzb(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 3
    if-eqz p1, :cond_12

    .line 5
    new-instance p1, Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdr:Ljava/lang/String;

    .line 9
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzds:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_1d

    .line 19
    :cond_12
    new-instance p1, Landroid/content/Intent;

    .line 21
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->mComponentName:Landroid/content/ComponentName;

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 29
    move-result-object p1

    .line 30
    :goto_1d
    return-object p1
.end method

.method public final zzq()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzdt:I

    .line 3
    return v0
.end method
