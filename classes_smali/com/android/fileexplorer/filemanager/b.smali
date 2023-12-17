.class public final synthetic Lcom/android/fileexplorer/filemanager/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/CountDownTimer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/b;->a:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/b;->a:Landroid/os/CountDownTimer;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->b(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;)V

    return-void
.end method
