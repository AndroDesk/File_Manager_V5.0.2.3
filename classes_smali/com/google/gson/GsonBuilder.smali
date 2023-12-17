.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field private numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

.field private objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 3
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 4
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 10
    iput v1, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 11
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 15
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 16
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    .line 17
    sget-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 18
    sget-object v0, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .registers 7

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 21
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 22
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v3, 0x0

    .line 26
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    const/4 v4, 0x2

    .line 27
    iput v4, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 28
    iput v4, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 29
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 30
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    const/4 v4, 0x1

    .line 31
    iput-boolean v4, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 32
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 33
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 34
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    .line 35
    sget-object v3, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy;

    iput-object v3, p0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 36
    sget-object v3, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy;

    iput-object v3, p0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 37
    iget-object v3, p1, Lcom/google/gson/Gson;->excluder:Lcom/google/gson/internal/Excluder;

    iput-object v3, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 38
    iget-object v3, p1, Lcom/google/gson/Gson;->fieldNamingStrategy:Lcom/google/gson/FieldNamingStrategy;

    iput-object v3, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 39
    iget-object v3, p1, Lcom/google/gson/Gson;->instanceCreators:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    iget-boolean v0, p1, Lcom/google/gson/Gson;->serializeNulls:Z

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 41
    iget-boolean v0, p1, Lcom/google/gson/Gson;->complexMapKeySerialization:Z

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 42
    iget-boolean v0, p1, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 43
    iget-boolean v0, p1, Lcom/google/gson/Gson;->htmlSafe:Z

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 44
    iget-boolean v0, p1, Lcom/google/gson/Gson;->prettyPrinting:Z

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 45
    iget-boolean v0, p1, Lcom/google/gson/Gson;->lenient:Z

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    .line 46
    iget-boolean v0, p1, Lcom/google/gson/Gson;->serializeSpecialFloatingPointValues:Z

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 47
    iget-object v0, p1, Lcom/google/gson/Gson;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 48
    iget-object v0, p1, Lcom/google/gson/Gson;->datePattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/google/gson/Gson;->dateStyle:I

    iput v0, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 50
    iget v0, p1, Lcom/google/gson/Gson;->timeStyle:I

    iput v0, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 51
    iget-object v0, p1, Lcom/google/gson/Gson;->builderFactories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v0, p1, Lcom/google/gson/Gson;->builderHierarchyFactories:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v0, p1, Lcom/google/gson/Gson;->objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 54
    iget-object p1, p1, Lcom/google/gson/Gson;->numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/gson/internal/sql/SqlTypesSupport;->SUPPORTS_SQL_TYPES:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_26

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_26

    .line 16
    sget-object p2, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 18
    invoke-virtual {p2, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/google/gson/TypeAdapterFactory;

    .line 21
    move-result-object p2

    .line 22
    if-eqz v0, :cond_24

    .line 24
    sget-object p3, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 26
    invoke-virtual {p3, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/google/gson/TypeAdapterFactory;

    .line 29
    move-result-object v1

    .line 30
    sget-object p3, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 32
    invoke-virtual {p3, p1}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(Ljava/lang/String;)Lcom/google/gson/TypeAdapterFactory;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_45

    .line 37
    :cond_24
    :goto_24
    move-object p1, v1

    .line 38
    goto :goto_45

    .line 39
    :cond_26
    const/4 p1, 0x2

    .line 40
    if-eq p2, p1, :cond_50

    .line 42
    if-eq p3, p1, :cond_50

    .line 44
    sget-object p1, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->DATE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    .line 49
    move-result-object p1

    .line 50
    if-eqz v0, :cond_43

    .line 52
    sget-object v1, Lcom/google/gson/internal/sql/SqlTypesSupport;->TIMESTAMP_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 54
    invoke-virtual {v1, p2, p3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lcom/google/gson/internal/sql/SqlTypesSupport;->DATE_DATE_TYPE:Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;

    .line 60
    invoke-virtual {v2, p2, p3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$DateType;->createAdapterFactory(II)Lcom/google/gson/TypeAdapterFactory;

    .line 63
    move-result-object p2

    .line 64
    move-object v3, p2

    .line 65
    move-object p2, p1

    .line 66
    move-object p1, v3

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    move-object p2, p1

    .line 69
    goto :goto_24

    .line 70
    :goto_45
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    if-eqz v0, :cond_50

    .line 75
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_50
    return-void
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 11
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 11
    return-object p0
.end method

.method public create()Lcom/google/gson/Gson;
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    move-object/from16 v18, v1

    .line 7
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 15
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 18
    move-result v3

    .line 19
    add-int/2addr v3, v2

    .line 20
    add-int/lit8 v3, v3, 0x3

    .line 22
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 37
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 48
    iget v3, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 50
    iget v4, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 52
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 55
    new-instance v21, Lcom/google/gson/Gson;

    .line 57
    move-object/from16 v1, v21

    .line 59
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 61
    iget-object v3, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 63
    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 65
    iget-boolean v5, v0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 67
    iget-boolean v6, v0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 69
    iget-boolean v7, v0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 71
    iget-boolean v8, v0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 73
    iget-boolean v9, v0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 75
    iget-boolean v10, v0, Lcom/google/gson/GsonBuilder;->lenient:Z

    .line 77
    iget-boolean v11, v0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 79
    iget-object v12, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 81
    iget-object v13, v0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 83
    iget v14, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 85
    iget v15, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 87
    move-object/from16 v22, v1

    .line 89
    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 91
    move-object/from16 v16, v1

    .line 93
    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 95
    move-object/from16 v17, v1

    .line 97
    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 99
    move-object/from16 v19, v1

    .line 101
    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 103
    move-object/from16 v20, v1

    .line 105
    move-object/from16 v1, v22

    .line 107
    invoke-direct/range {v1 .. v20}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/gson/ToNumberStrategy;Lcom/google/gson/ToNumberStrategy;)V

    .line 110
    return-object v21
.end method

.method public disableHtmlEscaping()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 4
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 9
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 4
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/gson/internal/Excluder;->withModifiers([I)Lcom/google/gson/internal/Excluder;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 9
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 9
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 4
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .registers 6

    .line 1
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    .line 3
    if-nez v0, :cond_13

    .line 5
    instance-of v1, p2, Lcom/google/gson/JsonDeserializer;

    .line 7
    if-nez v1, :cond_13

    .line 9
    instance-of v1, p2, Lcom/google/gson/InstanceCreator;

    .line 11
    if-nez v1, :cond_13

    .line 13
    instance-of v1, p2, Lcom/google/gson/TypeAdapter;

    .line 15
    if-eqz v1, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v1, 0x1

    .line 21
    :goto_14
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 24
    instance-of v1, p2, Lcom/google/gson/InstanceCreator;

    .line 26
    if-eqz v1, :cond_23

    .line 28
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 30
    move-object v2, p2

    .line 31
    check-cast v2, Lcom/google/gson/InstanceCreator;

    .line 33
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_23
    if-nez v0, :cond_29

    .line 38
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    .line 40
    if-eqz v0, :cond_36

    .line 42
    :cond_29
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 48
    invoke-static {v0, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_36
    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    .line 57
    if-eqz v0, :cond_49

    .line 59
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 61
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 64
    move-result-object p1

    .line 65
    check-cast p2, Lcom/google/gson/TypeAdapter;

    .line 67
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    .line 70
    move-result-object p1

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_49
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    .line 3
    if-nez v0, :cond_f

    .line 5
    instance-of v1, p2, Lcom/google/gson/JsonDeserializer;

    .line 7
    if-nez v1, :cond_f

    .line 9
    instance-of v1, p2, Lcom/google/gson/TypeAdapter;

    .line 11
    if-eqz v1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v1, 0x1

    .line 17
    :goto_10
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 20
    instance-of v1, p2, Lcom/google/gson/JsonDeserializer;

    .line 22
    if-nez v1, :cond_19

    .line 24
    if-eqz v0, :cond_22

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 28
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_22
    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    .line 37
    if-eqz v0, :cond_31

    .line 39
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 41
    check-cast p2, Lcom/google/gson/TypeAdapter;

    .line 43
    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_31
    return-object p0
.end method

.method public serializeNulls()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 4
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 4
    return-object p0
.end method

.method public setDateFormat(I)Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 2
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcom/google/gson/GsonBuilder;
    .registers 3

    .line 4
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 5
    iput p2, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_12

    .line 5
    aget-object v2, p1, v1

    .line 7
    iget-object v3, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v2, v4, v4}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;

    .line 13
    move-result-object v2

    .line 14
    iput-object v2, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_2

    .line 19
    :cond_12
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 3
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 3
    return-object p0
.end method

.method public setLenient()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    .line 4
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 3
    return-object p0
.end method

.method public setNumberToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->numberToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 3
    return-object p0
.end method

.method public setObjectToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->objectToNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 3
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/google/gson/GsonBuilder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 4
    return-object p0
.end method

.method public setVersion(D)Lcom/google/gson/GsonBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/Excluder;->withVersion(D)Lcom/google/gson/internal/Excluder;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 9
    return-object p0
.end method
