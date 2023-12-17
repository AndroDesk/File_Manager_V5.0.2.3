.class public Lcom/android/fileexplorer/search/SearchTagView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SearchTagView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECK_STATE:[I


# instance fields
.field private isChecked:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a0

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lcom/android/fileexplorer/search/SearchTagView;->CHECK_STATE:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/search/SearchTagView;->isChecked:Z

    .line 3
    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/search/SearchTagView;->isChecked()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_11

    .line 13
    sget-object v0, Lcom/android/fileexplorer/search/SearchTagView;->CHECK_STATE:[I

    .line 15
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 18
    :cond_11
    return-object p1
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/search/SearchTagView;->isChecked:Z

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/search/SearchTagView;->isChecked:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 10
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/search/SearchTagView;->isChecked:Z

    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/search/SearchTagView;->setChecked(Z)V

    .line 8
    return-void
.end method
