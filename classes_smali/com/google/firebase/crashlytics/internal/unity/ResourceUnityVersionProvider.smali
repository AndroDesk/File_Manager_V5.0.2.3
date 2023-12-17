.class public Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;
.super Ljava/lang/Object;
.source "ResourceUnityVersionProvider.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;


# instance fields
.field private final context:Landroid/content/Context;

.field private hasRead:Z

.field private unityVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->hasRead:Z

    .line 7
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->context:Landroid/content/Context;

    .line 9
    return-void
.end method


# virtual methods
.method public getUnityVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->hasRead:Z

    .line 3
    if-nez v0, :cond_f

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->context:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->resolveUnityEditorVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->hasRead:Z

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/unity/ResourceUnityVersionProvider;->unityVersion:Ljava/lang/String;

    .line 18
    if-eqz v0, :cond_14

    .line 20
    return-object v0

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method
