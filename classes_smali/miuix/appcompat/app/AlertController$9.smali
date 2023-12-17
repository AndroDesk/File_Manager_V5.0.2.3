.class Lmiuix/appcompat/app/AlertController$9;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$9;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$9;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$700(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V

    .line 10
    return-void
.end method
