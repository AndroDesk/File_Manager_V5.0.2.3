.class public Lcom/android/fileexplorer/model/group/CollatorInstance;
.super Ljava/lang/Object;
.source "CollatorInstance.java"


# static fields
.field private static volatile collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/text/Collator;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/group/CollatorInstance;->collator:Ljava/text/Collator;

    .line 3
    if-nez v0, :cond_1a

    .line 5
    const-class v0, Lcom/android/fileexplorer/model/group/CollatorInstance;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/model/group/CollatorInstance;->collator:Ljava/text/Collator;

    .line 10
    if-nez v1, :cond_15

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lcom/android/fileexplorer/model/group/CollatorInstance;->collator:Ljava/text/Collator;

    .line 22
    :cond_15
    monitor-exit v0

    .line 23
    goto :goto_1a

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    .line 26
    throw v1

    .line 27
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/android/fileexplorer/model/group/CollatorInstance;->collator:Ljava/text/Collator;

    .line 29
    return-object v0
.end method
