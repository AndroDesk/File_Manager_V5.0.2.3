.class public Lcom/xiaomi/mirror/MirrorManagerImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/MirrorManagerImpl;->showPopupWindow(Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mirror/MirrorManagerImpl;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$3;->this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$3;->val$v:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManagerImpl;->access$000(Landroid/view/View;)Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$3;->val$v:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;->onMirrorMenuShow(Landroid/view/View;Z)V

    :cond_e
    return-void
.end method
