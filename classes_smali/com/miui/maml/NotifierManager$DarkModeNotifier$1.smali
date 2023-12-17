.class Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;
.super Landroid/database/ContentObserver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager$DarkModeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;


# direct methods
.method public constructor <init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 3
    invoke-static {p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$200(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    .line 6
    iget-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 8
    invoke-static {p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$300(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    .line 11
    return-void
.end method
