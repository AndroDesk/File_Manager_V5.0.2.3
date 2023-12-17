.class public Lcom/android/fileexplorer/model/group/CollatorInstance;
.super Ljava/lang/Object;
.source "CollatorInstance.java"


# static fields
.field private static volatile collator:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/text/Collator;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/model/group/CollatorInstance;->collator:Ljava/text/Collator;

    if-nez v0, :cond_1a

    const-class v0, Lcom/android/fileexplorer/model/group/CollatorInstance;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/model/group/CollatorInstance;->collator:Ljava/text/Collator;

    if-nez v1, :cond_15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/model/group/CollatorInstance;->collator:Ljava/text/Collator;

    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :goto_1a
    sget-object v0, Lcom/android/fileexplorer/model/group/CollatorInstance;->collator:Ljava/text/Collator;

    return-object v0
.end method
