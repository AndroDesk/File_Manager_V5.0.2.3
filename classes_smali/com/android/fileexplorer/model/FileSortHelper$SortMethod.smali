.class public final enum Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
.super Ljava/lang/Enum;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/FileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

.field public static final enum TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 3
    const-string v1, "NAME"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 11
    new-instance v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 13
    const-string v3, "SIZE_DESC"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 21
    new-instance v3, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 23
    const-string v5, "SIZE_ASC"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 31
    new-instance v5, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 33
    const-string v7, "TYPE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 41
    new-instance v7, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 43
    const-string v9, "DATE"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 51
    new-instance v9, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 53
    const-string v11, "TIME"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TIME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 64
    aput-object v0, v11, v2

    .line 66
    aput-object v1, v11, v4

    .line 68
    aput-object v3, v11, v6

    .line 70
    aput-object v5, v11, v8

    .line 72
    aput-object v7, v11, v10

    .line 74
    aput-object v9, v11, v12

    .line 76
    sput-object v11, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->$VALUES:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static getInt(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static valueOf(I)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    if-ltz p0, :cond_11

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->values()[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_a

    goto :goto_11

    .line 3
    :cond_a
    invoke-static {}, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->values()[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->$VALUES:[Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 3
    invoke-virtual {v0}, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 9
    return-object v0
.end method
