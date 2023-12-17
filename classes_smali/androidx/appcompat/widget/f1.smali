.class public final Landroidx/appcompat/widget/f1;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/view/WindowManager$LayoutParams;

.field public final e:Landroid/graphics/Rect;

.field public final f:[I

.field public final g:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 6
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/f1;->d:Landroid/view/WindowManager$LayoutParams;

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iput-object v1, p0, Landroidx/appcompat/widget/f1;->e:Landroid/graphics/Rect;

    .line 18
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [I

    .line 21
    iput-object v2, p0, Landroidx/appcompat/widget/f1;->f:[I

    .line 23
    new-array v1, v1, [I

    .line 25
    iput-object v1, p0, Landroidx/appcompat/widget/f1;->g:[I

    .line 27
    iput-object p1, p0, Landroidx/appcompat/widget/f1;->a:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    move-result-object v1

    .line 33
    sget v2, Lh/g;->abc_tooltip:I

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Landroidx/appcompat/widget/f1;->b:Landroid/view/View;

    .line 42
    sget v2, Lh/f;->message:I

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Landroidx/appcompat/widget/f1;->c:Landroid/widget/TextView;

    .line 52
    const-class v1, Landroidx/appcompat/widget/f1;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 67
    const/16 p1, 0x3ea

    .line 69
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 71
    const/4 p1, -0x2

    .line 72
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    const/4 p1, -0x3

    .line 77
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 79
    sget p1, Lh/i;->Animation_AppCompat_Tooltip:I

    .line 81
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 83
    const/16 p1, 0x18

    .line 85
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 87
    return-void
.end method
