.class public final synthetic Lcom/android/cloud/util/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field public final synthetic a:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/util/a;->a:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/util/a;->a:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/android/cloud/util/DialogUtil;->a(Landroid/app/Dialog;Z)V

    return-void
.end method
