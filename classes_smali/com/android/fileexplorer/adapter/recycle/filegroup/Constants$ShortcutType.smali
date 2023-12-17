.class public Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ShortcutType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutType"
.end annotation


# static fields
.field public static final ID_COPY:I

.field public static final ID_CUT_PASTE:I

.field public static final ID_DEL:I

.field public static final ID_PASTE:I

.field public static final ID_SELECT_ALL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ShortcutType;->ID_COPY:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ShortcutType;->ID_CUT_PASTE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ShortcutType;->ID_DEL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ShortcutType;->ID_PASTE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$ShortcutType;->ID_SELECT_ALL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
