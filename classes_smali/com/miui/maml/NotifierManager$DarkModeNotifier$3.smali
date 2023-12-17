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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    invoke-static {v0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$500(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    invoke-static {p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$300(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

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
