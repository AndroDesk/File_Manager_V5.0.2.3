.class public final synthetic Lmiuix/appcompat/app/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/d;->a:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final end()V
    .registers 2

    iget-object v0, p0, Lmiuix/appcompat/app/d;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/AlertDialog;->b(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
