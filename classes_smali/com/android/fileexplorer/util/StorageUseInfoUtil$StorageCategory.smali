.class public final enum Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;
.super Ljava/lang/Enum;
.source "StorageUseInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/StorageUseInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

.field public static final enum Apk:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

.field public static final enum Doc:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

.field public static final enum Music:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

.field public static final enum Picture:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

.field public static final enum Video:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

.field public static final enum Zip:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    const-string v1, "Music"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Music:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    new-instance v1, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    const-string v3, "Video"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Video:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    new-instance v3, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    const-string v5, "Picture"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Picture:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    new-instance v5, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    const-string v7, "Doc"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Doc:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    new-instance v7, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    const-string v9, "Zip"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Zip:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    new-instance v9, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    const-string v11, "Apk"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->Apk:Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->$VALUES:[Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->$VALUES:[Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/util/StorageUseInfoUtil$StorageCategory;

    return-object v0
.end method
