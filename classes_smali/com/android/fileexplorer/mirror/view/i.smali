.class public final synthetic Lcom/android/fileexplorer/mirror/view/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/i;->a:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/i;->a:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->e(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;Landroid/view/View;Z)V

    return-void
.end method
