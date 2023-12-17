.class final Lcom/google/android/gms/dynamite/DynamiteModule$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zzip:I

.field private final zziq:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zzip:I

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zziq:I

    .line 9
    return-void
.end method


# virtual methods
.method public final getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 1
    iget p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zzip:I

    .line 3
    return p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method
