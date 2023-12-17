.class public Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ClickActionType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickActionType"
.end annotation


# static fields
.field public static final ACTION_DRAG_HOVER_FOLDER:I

.field public static final ACTION_ITEM_VIEW:I

.field public static final ACTION_SEARCH_VIEW_MORE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ClickActionType;->ACTION_DRAG_HOVER_FOLDER:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ClickActionType;->ACTION_ITEM_VIEW:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ClickActionType;->ACTION_SEARCH_VIEW_MORE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
