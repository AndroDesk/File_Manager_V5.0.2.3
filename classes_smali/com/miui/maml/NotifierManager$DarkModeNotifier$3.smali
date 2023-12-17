.class Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;
.super Ljava/lang/Object;
.source "NotifierManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


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
.method public constructor <init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 3
    invoke-static {v0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$500(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/content/res/Configuration;)V

    .line 6
    iget-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 8
    invoke-static {p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$300(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    .line 11
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    return-void
.end method
