.class public interface abstract Lcom/android/fileexplorer/model/FileEntryEntity$EntryViewOrder;
.super Ljava/lang/Object;
.source "FileEntryEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/FileEntryEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntryViewOrder"
.end annotation


# static fields
.field public static final ENTRY_VIEW_SD_ORDER:I

.field public static final ENTRY_VIEW_STORENGE_ORDER:I

.field public static final ENTRY_VIEW_USB_ORDER:I

.field public static final ENTRY_VIEW_XSPACE_ORDER:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/FileEntryEntity$EntryViewOrder;->ENTRY_VIEW_SD_ORDER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/FileEntryEntity$EntryViewOrder;->ENTRY_VIEW_STORENGE_ORDER:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/FileEntryEntity$EntryViewOrder;->ENTRY_VIEW_USB_ORDER:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/FileEntryEntity$EntryViewOrder;->ENTRY_VIEW_XSPACE_ORDER:I

    return-void
.end method
