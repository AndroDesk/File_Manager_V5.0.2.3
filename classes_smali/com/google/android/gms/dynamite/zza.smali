.class final Lcom/google/android/gms/dynamite/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method
