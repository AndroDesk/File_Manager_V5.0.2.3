.class Lcom/google/android/material/internal/TextDrawableHelper$1;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/TextDrawableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/TextDrawableHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->access$002(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z

    .line 7
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 9
    invoke-static {p1}, Lcom/google/android/material/internal/TextDrawableHelper;->access$100(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    .line 19
    if-eqz p1, :cond_17

    .line 21
    invoke-interface {p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    .line 24
    :cond_17
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .registers 3

    .line 1
    if-eqz p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/material/internal/TextDrawableHelper;->access$002(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z

    .line 10
    iget-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper$1;->this$0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 12
    invoke-static {p1}, Lcom/google/android/material/internal/TextDrawableHelper;->access$100(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    .line 22
    if-eqz p1, :cond_1a

    .line 24
    invoke-interface {p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    .line 27
    :cond_1a
    return-void
.end method
