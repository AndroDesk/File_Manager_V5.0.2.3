.class public Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;
.super Lcom/miui/maml/NotifierManager$BroadcastNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBroadcastNotifier"
.end annotation


# instance fields
.field private mIntents:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public createIntentFilter()Landroid/content/IntentFilter;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_9
    if-ge v3, v2, :cond_13

    .line 12
    aget-object v4, v1, v3

    .line 14
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 19
    goto :goto_9

    .line 20
    :cond_13
    return-object v0
.end method
