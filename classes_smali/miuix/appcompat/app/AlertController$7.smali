.class Lmiuix/appcompat/app/AlertController$7;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public isTablet:Z

.field public final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    .line 9
    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertController;->access$1602(Lmiuix/appcompat/app/AlertController;Z)Z

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 12
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$2300(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_4a

    .line 26
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 33
    move-result-object v0

    .line 34
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    .line 36
    if-gtz v1, :cond_3a

    .line 38
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 40
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x0

    .line 49
    cmpg-float v1, v1, v2

    .line 51
    if-gez v1, :cond_3a

    .line 53
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-static {v1, v2}, Lmiuix/appcompat/app/AlertController;->access$2100(Lmiuix/appcompat/app/AlertController;I)V

    .line 59
    :cond_3a
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 61
    invoke-static {v1, p1}, Lmiuix/appcompat/app/AlertController;->access$2400(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V

    .line 64
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    .line 66
    if-nez p1, :cond_4a

    .line 68
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 70
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 72
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertController;->access$2200(Lmiuix/appcompat/app/AlertController;I)V

    .line 75
    :cond_4a
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 4
    invoke-static {}, Lmiuix/appcompat/widget/DialogAnimHelper;->cancelAnimator()V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertController;->access$1602(Lmiuix/appcompat/app/AlertController;Z)Z

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 15
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$1700(Lmiuix/appcompat/app/AlertController;)Z

    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    .line 21
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 8
    move-result-object p2

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 16
    move-result-object v0

    .line 17
    iget v1, p2, Landroid/graphics/Insets;->bottom:I

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 21
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$1800(Lmiuix/appcompat/app/AlertController;)I

    .line 24
    move-result v2

    .line 25
    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v1, v2

    .line 32
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_80

    .line 42
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 44
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$2000(Lmiuix/appcompat/app/AlertController;)Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_75

    .line 50
    const-string v2, "WindowInsetsAnimation onProgress mPanelAndImeMargin : "

    .line 52
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v2

    .line 56
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 58
    invoke-static {v3}, Lmiuix/appcompat/app/AlertController;->access$1800(Lmiuix/appcompat/app/AlertController;)I

    .line 61
    move-result v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    const-string v3, "AlertController"

    .line 71
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v4, "WindowInsetsAnimation onProgress ime : "

    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 86
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v2, "WindowInsetsAnimation onProgress navigationBar : "

    .line 103
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_75
    if-gez v1, :cond_79

    .line 120
    const/4 p2, 0x0

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move p2, v1

    .line 123
    :goto_7a
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 125
    neg-int p2, p2

    .line 126
    invoke-static {v0, p2}, Lmiuix/appcompat/app/AlertController;->access$2100(Lmiuix/appcompat/app/AlertController;I)V

    .line 129
    :cond_80
    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    .line 131
    if-nez p2, :cond_89

    .line 133
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 135
    invoke-static {p2, v1}, Lmiuix/appcompat/app/AlertController;->access$2200(Lmiuix/appcompat/app/AlertController;I)V

    .line 138
    :cond_89
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$1900(Lmiuix/appcompat/app/AlertController;)I

    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 10
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 17
    move-result v2

    .line 18
    add-float/2addr v2, v1

    .line 19
    float-to-int v1, v2

    .line 20
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$1802(Lmiuix/appcompat/app/AlertController;I)I

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 25
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2000(Lmiuix/appcompat/app/AlertController;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_36

    .line 31
    const-string v0, "WindowInsetsAnimation onStart mPanelAndImeMargin : "

    .line 33
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 39
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$1800(Lmiuix/appcompat/app/AlertController;)I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "AlertController"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_36
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 57
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$1800(Lmiuix/appcompat/app/AlertController;)I

    .line 60
    move-result v0

    .line 61
    if-gtz v0, :cond_44

    .line 63
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$1802(Lmiuix/appcompat/app/AlertController;I)I

    .line 69
    :cond_44
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method
