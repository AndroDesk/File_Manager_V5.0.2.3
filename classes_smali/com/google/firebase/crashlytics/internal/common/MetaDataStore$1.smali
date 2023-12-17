.class Lcom/google/firebase/crashlytics/internal/common/MetaDataStore$1;
.super Lorg/json/JSONObject;
.source "MetaDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->userDataToJson(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$userData:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore$1;->val$userData:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    .line 3
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->getUserId()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, "userId"

    .line 12
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    return-void
.end method
