.class public final synthetic Lmiuix/navigator/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lmiuix/navigator/EditDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lmiuix/navigator/EditDialogFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/c;->a:Lmiuix/navigator/EditDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/c;->a:Lmiuix/navigator/EditDialogFragment;

    invoke-static {v0, p1, p2}, Lmiuix/navigator/EditDialogFragment;->d(Lmiuix/navigator/EditDialogFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
