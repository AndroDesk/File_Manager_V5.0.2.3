.class public Lcom/xiaomi/mirror/MirrorManagerImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field public final synthetic val$menus:Ljava/util/ArrayList;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/MirrorManagerImpl;Ljava/util/ArrayList;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

    invoke-static {p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->access$200(Lcom/xiaomi/mirror/MirrorManagerImpl;)Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/MirrorMenu;

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->needCallRemote()Z

    move-result p2

    const-string p3, "MirrorManagerImpl"

    if-eqz p2, :cond_52

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object p4

    const/4 p5, 0x3

    const-string v0, "com.xiaomi.mirror"

    invoke-virtual {p2, v0, p4, p5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_2f
    const/4 p2, 0x0

    :try_start_30
    iget-object p4, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    if-eqz p4, :cond_44

    invoke-virtual {p4}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p4

    if-eqz p4, :cond_44

    iget-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    :cond_44
    iget-object p4, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

    invoke-static {p4}, Lcom/xiaomi/mirror/MirrorManagerImpl;->access$300(Lcom/xiaomi/mirror/MirrorManagerImpl;)Lcom/xiaomi/mirror/IMirrorManager;

    move-result-object p4

    invoke-interface {p4, p1, p2}, Lcom/xiaomi/mirror/IMirrorManager;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    :try_end_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_4e

    goto :goto_75

    :catchall_4e
    move-exception p1

    const-string p2, "onRemoteMenuActionCall"

    goto :goto_72

    :cond_52
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getListener()Lcom/xiaomi/mirror/MirrorMenu$Callback;

    move-result-object p2

    if-eqz p2, :cond_61

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getListener()Lcom/xiaomi/mirror/MirrorMenu$Callback;

    move-result-object p2

    iget-object p4, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-interface {p2, p4, p1}, Lcom/xiaomi/mirror/MirrorMenu$Callback;->onClick(Landroid/view/View;Lcom/xiaomi/mirror/MirrorMenu;)V

    :cond_61
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_75

    :try_start_67
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_6e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_67 .. :try_end_6e} :catch_6f

    goto :goto_75

    :catch_6f
    move-exception p1

    const-string p2, ""

    :goto_72
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    :goto_75
    return-void
.end method
