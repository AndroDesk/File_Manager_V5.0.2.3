.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field public final synthetic val$isLandscape:Z

.field public final synthetic val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public final synthetic val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 3
    iput-boolean p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    .line 5
    iput-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 7
    iput-object p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    sub-int p2, p5, p3

    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 10
    iget-boolean p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    .line 12
    new-instance p5, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 16
    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 18
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v0, p5

    .line 22
    move-object v4, p1

    .line 23
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;I)V

    .line 26
    new-instance p6, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;

    .line 28
    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 30
    iget-boolean p7, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    .line 32
    invoke-direct {p6, p3, p1, p7}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Z)V

    .line 35
    const/4 p3, 0x0

    .line 36
    invoke-static/range {p1 .. p6}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$200(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    .line 39
    return-void
.end method
