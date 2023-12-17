.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;
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

.field public final synthetic val$contentView:Landroid/view/View;

.field public final synthetic val$isLandscape:Z

.field public final synthetic val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public final synthetic val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$contentView:Landroid/view/View;

    .line 5
    iput-boolean p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    .line 7
    iput-object p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 9
    iput-object p5, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$contentView:Landroid/view/View;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 9
    move-result p4

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-static {p1, p4, p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 14
    iget-boolean p6, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    .line 16
    new-instance p7, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;

    .line 18
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 20
    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 22
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 24
    const/4 v5, 0x0

    .line 25
    move-object v0, p7

    .line 26
    move-object v4, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;I)V

    .line 30
    new-instance p8, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;

    .line 32
    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 34
    iget-boolean p5, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    .line 36
    invoke-direct {p8, p3, p1, p5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Z)V

    .line 39
    const/4 p5, 0x0

    .line 40
    move-object p3, p1

    .line 41
    invoke-static/range {p3 .. p8}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$200(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method
