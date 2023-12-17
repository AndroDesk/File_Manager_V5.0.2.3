.class public final Landroidx/preference/e;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field public static final e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:[Ljava/lang/Object;

.field public c:Landroidx/preference/f;

.field public d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-class v2, Landroid/content/Context;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    const-class v2, Landroid/util/AttributeSet;

    .line 12
    aput-object v2, v0, v1

    .line 14
    sput-object v0, Landroidx/preference/e;->e:[Ljava/lang/Class;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    sput-object v0, Landroidx/preference/e;->f:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/f;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    iput-object v1, p0, Landroidx/preference/e;->b:[Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Landroidx/preference/e;->a:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Landroidx/preference/e;->c:Landroidx/preference/f;

    .line 13
    new-array p1, v0, [Ljava/lang/String;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-class v0, Landroidx/preference/Preference;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, "."

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    const/4 v1, 0x0

    .line 43
    aput-object p2, p1, v1

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-class v1, Landroidx/preference/SwitchPreference;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    const/4 v0, 0x1

    .line 71
    aput-object p2, p1, v0

    .line 73
    iput-object p1, p0, Landroidx/preference/e;->d:[Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;
    .registers 14

    .line 1
    sget-object v0, Landroidx/preference/e;->f:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 9
    const-string v1, ": Error inflating class "

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_6d

    .line 14
    :try_start_d
    iget-object v0, p0, Landroidx/preference/e;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz p2, :cond_5b

    .line 23
    array-length v4, p2

    .line 24
    if-nez v4, :cond_1a

    .line 26
    goto :goto_5b

    .line 27
    :cond_1a
    array-length v4, p2

    .line 28
    const/4 v5, 0x0

    .line 29
    move v6, v3

    .line 30
    move-object v7, v5

    .line 31
    :goto_1e
    if-ge v6, v4, :cond_3a

    .line 33
    aget-object v8, p2, v6
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_22} :catch_98
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_78

    .line 35
    :try_start_22
    new-instance v9, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v8

    .line 50
    invoke-static {v8, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 53
    move-result-object v5
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_35} :catch_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_35} :catch_78

    .line 54
    goto :goto_3a

    .line 55
    :catch_36
    move-exception v7

    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 58
    goto :goto_1e

    .line 59
    :cond_3a
    :goto_3a
    if-nez v5, :cond_5f

    .line 61
    if-nez v7, :cond_5a

    .line 63
    :try_start_3e
    new-instance p2, Landroid/view/InflateException;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p2

    .line 91
    :cond_5a
    throw v7

    .line 92
    :cond_5b
    :goto_5b
    invoke-static {p1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 95
    move-result-object v5

    .line 96
    :cond_5f
    sget-object p2, Landroidx/preference/e;->e:[Ljava/lang/Class;

    .line 98
    invoke-virtual {v5, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 105
    sget-object p2, Landroidx/preference/e;->f:Ljava/util/HashMap;

    .line 107
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_6d
    iget-object p2, p0, Landroidx/preference/e;->b:[Ljava/lang/Object;

    .line 112
    aput-object p3, p2, v2

    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroidx/preference/Preference;
    :try_end_77
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3e .. :try_end_77} :catch_98
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_77} :catch_78

    .line 120
    return-object p2

    .line 121
    :catch_78
    move-exception p2

    .line 122
    new-instance v0, Landroid/view/InflateException;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    invoke-direct {v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 152
    throw v0

    .line 153
    :catch_98
    move-exception p1

    .line 154
    throw p1
.end method

.method public final b(Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;
    .registers 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, 0x2e

    .line 4
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 7
    move-result v1

    .line 8
    if-ne v0, v1, :cond_10

    .line 10
    iget-object v0, p0, Landroidx/preference/e;->d:[Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Landroidx/preference/e;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0, p2}, Landroidx/preference/e;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    .line 21
    move-result-object p1
    :try_end_15
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_15} :catch_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_15} :catch_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    .line 22
    :goto_15
    return-object p1

    .line 23
    :catch_16
    move-exception v0

    .line 24
    new-instance v1, Landroid/view/InflateException;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p2, ": Error inflating class "

    .line 40
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    throw v1

    .line 57
    :catch_38
    move-exception v0

    .line 58
    new-instance v1, Landroid/view/InflateException;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string p2, ": Error inflating class (not found)"

    .line 74
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 90
    throw v1

    .line 91
    :catch_5a
    move-exception p1

    .line 92
    throw p1
.end method

.method public final c(Landroid/content/res/XmlResourceParser;Landroidx/preference/PreferenceGroup;)Landroidx/preference/PreferenceGroup;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/preference/e;->b:[Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Landroidx/preference/e;->b:[Ljava/lang/Object;

    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v4, p0, Landroidx/preference/e;->a:Landroid/content/Context;

    .line 13
    aput-object v4, v2, v3
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_83

    .line 15
    :cond_e
    :try_start_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq v2, v3, :cond_18

    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v2, v4, :cond_e

    .line 25
    :cond_18
    if-ne v2, v3, :cond_33

    .line 27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v2, v1}, Landroidx/preference/e;->b(Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 37
    if-nez p2, :cond_2c

    .line 39
    iget-object p2, p0, Landroidx/preference/e;->c:Landroidx/preference/f;

    .line 41
    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/f;)V

    .line 44
    move-object p2, v2

    .line 45
    :cond_2c
    invoke-virtual {p0, p1, p2, v1}, Landroidx/preference/e;->d(Landroid/content/res/XmlResourceParser;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    :try_end_2f
    .catch Landroid/view/InflateException; {:try_start_e .. :try_end_2f} :catch_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_2f} :catch_73
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_31
    .catchall {:try_start_e .. :try_end_2f} :catchall_83

    .line 48
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_83

    .line 49
    return-object p2

    .line 50
    :catch_31
    move-exception p2

    .line 51
    goto :goto_4e

    .line 52
    :cond_33
    :try_start_33
    new-instance p2, Landroid/view/InflateException;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ": No start tag found!"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-direct {p2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p2
    :try_end_4e
    .catch Landroid/view/InflateException; {:try_start_33 .. :try_end_4e} :catch_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_4e} :catch_73
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4e} :catch_31
    .catchall {:try_start_33 .. :try_end_4e} :catchall_83

    .line 79
    :goto_4e
    :try_start_4e
    new-instance v1, Landroid/view/InflateException;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string p1, ": "

    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 115
    throw v1

    .line 116
    :catch_73
    move-exception p1

    .line 117
    new-instance p2, Landroid/view/InflateException;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    invoke-direct {p2, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 129
    throw p2

    .line 130
    :catch_81
    move-exception p1

    .line 131
    throw p1

    .line 132
    :catchall_83
    move-exception p1

    .line 133
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_4e .. :try_end_85} :catchall_83

    .line 134
    throw p1
.end method

.method public final d(Landroid/content/res/XmlResourceParser;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    .registers 11

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    move-result v0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v1, v2, :cond_11

    .line 12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 15
    move-result v3

    .line 16
    if-le v3, v0, :cond_7e

    .line 18
    :cond_11
    const/4 v3, 0x1

    .line 19
    if-eq v1, v3, :cond_7e

    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v1, v4, :cond_18

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v4, "intent"

    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    const-string v5, "Error parsing preference"

    .line 37
    if-eqz v4, :cond_3e

    .line 39
    :try_start_26
    iget-object v1, p0, Landroidx/preference/e;->a:Landroid/content/Context;

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    .line 48
    move-result-object v1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_30} :catch_34

    .line 49
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 52
    goto :goto_4

    .line 53
    :catch_34
    move-exception p1

    .line 54
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 56
    invoke-direct {p2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 62
    throw p2

    .line 63
    :cond_3e
    const-string v4, "extra"

    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_70

    .line 71
    iget-object v1, p0, Landroidx/preference/e;->a:Landroid/content/Context;

    .line 73
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v1, v4, p3, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 84
    :try_start_53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 87
    move-result v1

    .line 88
    :cond_57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 91
    move-result v4

    .line 92
    if-eq v4, v3, :cond_4

    .line 94
    if-ne v4, v2, :cond_57

    .line 96
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 99
    move-result v4
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_63} :catch_66

    .line 100
    if-gt v4, v1, :cond_57

    .line 102
    goto :goto_4

    .line 103
    :catch_66
    move-exception p1

    .line 104
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 106
    invoke-direct {p2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw p2

    .line 113
    :cond_70
    invoke-virtual {p0, v1, p3}, Landroidx/preference/e;->b(Ljava/lang/String;Landroid/util/AttributeSet;)Landroidx/preference/Preference;

    .line 116
    move-result-object v1

    .line 117
    move-object v2, p2

    .line 118
    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 120
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addItemFromInflater(Landroidx/preference/Preference;)V

    .line 123
    invoke-virtual {p0, p1, v1, p3}, Landroidx/preference/e;->d(Landroid/content/res/XmlResourceParser;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    .line 126
    goto :goto_4

    .line 127
    :cond_7e
    return-void
.end method
