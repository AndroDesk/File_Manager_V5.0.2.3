.class public Lcom/google/firebase/crashlytics/internal/common/UserMetadata;
.super Ljava/lang/Object;
.source "UserMetadata.java"


# static fields
.field public static final MAX_ATTRIBUTES:I = 0x40

.field public static final MAX_ATTRIBUTE_SIZE:I = 0x400


# instance fields
.field private final attributes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->userId:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    return-void
.end method

.method private static sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_13

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x400

    .line 13
    if-le v0, v1, :cond_13

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    :cond_13
    return-object p0
.end method


# virtual methods
.method public getCustomKeys()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->userId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_31

    .line 3
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x40

    .line 15
    if-lt v0, v1, :cond_22

    .line 17
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_22

    .line 25
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 28
    move-result-object p1

    .line 29
    const-string p2, "Exceeded maximum number of custom attributes (64)"

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 34
    return-void

    .line 35
    :cond_22
    if-nez p2, :cond_27

    .line 37
    const-string p2, ""

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    :goto_2b
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void

    .line 50
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string p2, "Custom attribute key must not be null."

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->userId:Ljava/lang/String;

    .line 7
    return-void
.end method
