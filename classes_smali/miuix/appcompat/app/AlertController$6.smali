.class Lmiuix/appcompat/app/AlertController$6;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AlertController;

.field public final synthetic val$densityScale:F


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;F)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    iput p2, p0, Lmiuix/appcompat/app/AlertController$6;->val$densityScale:F

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/appcompat/R$id;->contentPanel:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 17
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 20
    move-result-object v1

    .line 21
    sget v2, Lmiuix/appcompat/R$id;->buttonPanel:I

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/view/ViewGroup;

    .line 29
    if-eqz v0, :cond_32

    .line 31
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 33
    invoke-static {v2, v0}, Lmiuix/appcompat/app/AlertController;->access$1000(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;)V

    .line 36
    if-eqz v1, :cond_32

    .line 38
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 40
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$1100(Lmiuix/appcompat/app/AlertController;)Z

    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_32

    .line 46
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 48
    invoke-static {v2, v1, v0}, Lmiuix/appcompat/app/AlertController;->access$1200(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 51
    :cond_32
    iget v0, p0, Lmiuix/appcompat/app/AlertController$6;->val$densityScale:F

    .line 53
    const/high16 v1, 0x3f800000  # 1.0f

    .line 55
    cmpl-float v1, v0, v1

    .line 57
    if-eqz v1, :cond_3f

    .line 59
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 61
    invoke-static {v1, v0}, Lmiuix/appcompat/app/AlertController;->access$1300(Lmiuix/appcompat/app/AlertController;F)V

    .line 64
    :cond_3f
    return-void
.end method
