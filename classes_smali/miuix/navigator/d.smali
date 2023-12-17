.class public final synthetic Lmiuix/navigator/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lmiuix/navigator/EditDialogFragment;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/EditDialogFragment;Landroid/view/View;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/d;->a:Lmiuix/navigator/EditDialogFragment;

    iput-object p2, p0, Lmiuix/navigator/d;->b:Landroid/view/View;

    iput-object p3, p0, Lmiuix/navigator/d;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/d;->a:Lmiuix/navigator/EditDialogFragment;

    iget-object v1, p0, Lmiuix/navigator/d;->b:Landroid/view/View;

    iget-object v2, p0, Lmiuix/navigator/d;->c:Landroid/widget/EditText;

    invoke-static {v0, v1, v2, p1}, Lmiuix/navigator/EditDialogFragment;->e(Lmiuix/navigator/EditDialogFragment;Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
