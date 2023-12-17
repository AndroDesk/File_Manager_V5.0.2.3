.class Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;
.super Ljava/lang/Object;
.source "FragmentDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidateMenuRunnable"
.end annotation


# instance fields
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/FragmentDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/FragmentDelegate;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$InvalidateMenuRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lmiuix/appcompat/app/FragmentDelegate;

    .line 14
    :goto_d
    if-nez v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$100(Lmiuix/appcompat/app/FragmentDelegate;)B

    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    and-int/2addr v2, v3

    .line 23
    if-ne v2, v3, :cond_1b

    .line 25
    invoke-static {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->access$202(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 28
    :cond_1b
    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$200(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez v2, :cond_31

    .line 35
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Lmiuix/appcompat/app/FragmentDelegate;->access$202(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 42
    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$200(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v4, v2}, Lmiuix/appcompat/app/FragmentDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 49
    move-result v3

    .line 50
    :cond_31
    if-eqz v3, :cond_3b

    .line 52
    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$200(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v4, v1, v2}, Lmiuix/appcompat/app/FragmentDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 59
    move-result v3

    .line 60
    :cond_3b
    if-eqz v3, :cond_45

    .line 62
    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$200(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 69
    goto :goto_4b

    .line 70
    :cond_45
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 73
    invoke-static {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->access$202(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 76
    :goto_4b
    const/16 v1, -0x12

    .line 78
    invoke-static {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->access$172(Lmiuix/appcompat/app/FragmentDelegate;I)B

    .line 81
    return-void
.end method
